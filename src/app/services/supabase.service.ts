import { ProviderAst } from '@angular/compiler';
import { Injectable } from '@angular/core';
import { 
  createClient, 
  RealtimeSubscription, 
  SupabaseClient,
  User,
  UserCredentials,
  Provider
} from '@supabase/supabase-js';
import { BehaviorSubject } from 'rxjs';


const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNDQ1OTM4OSwiZXhwIjoxOTQwMDM1Mzg5fQ.O81aW1V7NXqfTcq75P4uYL8P9g_sGUQl40qVlj4iijA';
const SUPABASE_URL = 'https://bsrnilszwqfwkgyfozkz.supabase.co';

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);
@Injectable({
  providedIn: 'root'
})
export class SupabaseService {
  private supabase: SupabaseClient;
  public user = new BehaviorSubject<User>(null);

  // private subscription: RealtimeSubscription;

  constructor()
  { 
    this.supabase = createClient(SUPABASE_URL, SUPABASE_KEY);
    // Try to recover our user session
    this.loadUser();
    this.supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'SIGNED_IN') {
        this.user.next(session.user);
      } else {
        this.user.next(null);
      }
    });
  }

  loadUser() {
    const user = this.supabase.auth.user();
    if (user) {
      this.user.next(user);
    } 
  }

  public signUpWithEmail = async (email: string, password: string) => {
    const { user, session, error } = await this.supabase.auth.signUp({
      email: email,
      password: password,
    });
    return { user, session, error };        
  }

  public signInWithEmail = async (email: string, password: string) => {
    const { user, session, error } = await this.supabase.auth.signIn({
      email: email,
      password: password,
    });
    return { user, session, error };        
  }


  public signInWithProvider = async (provider: Provider) => {
    const { user, session, error } = await this.supabase.auth.signIn({
      // provider can be:
      // 'azure','bitbucket','facebook','github','gitlab','google','twitter','apple'
      provider: provider
    });
    return { user, session, error };
  }

  public resetPassword = async (email: string) => {
    const { data, error } = await this.supabase.auth.api.resetPasswordForEmail(email);
    return  { data, error };
  }

  public sendMagicLink = async (email: string) => {
    const { user, session, error } = await this.supabase.auth.signIn({
      email: email
    });
    return { user, session, error };
  }

  public updatePassword = async (access_token: string, new_password: string) => {
    const { error, data } = await this.supabase.auth.api
    .updateUser(access_token, { password : new_password });
    return { error, data };
  }

  public signOut = async () => {
    const { error } = await supabase.auth.signOut();
    if (!error) {
      this.user.next(null);
    }
    return { error };
  }
}
