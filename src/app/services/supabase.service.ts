import { Injectable } from '@angular/core';
import { 
  createClient, 
  SupabaseClient,
  User,
  Provider
} from '@supabase/supabase-js';
import { BehaviorSubject } from 'rxjs';

/************************************************************
  Enter your Supabase Key and Supabase URL below
  1. go to https://supabase.io, 
  2. log into your project
  3. click "settings" on the left (at the bottom)
  4. click "API"
  5. copy "URL" to SUPABASE_URL below
  6. copy your "API Key" (anon public) to SUPABASE_KEY below
*************************************************************/
const SUPABASE_URL = 'https://bsrnilszwqfwkgyfozkz.supabase.co';
const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNDQ1OTM4OSwiZXhwIjoxOTQwMDM1Mzg5fQ.O81aW1V7NXqfTcq75P4uYL8P9g_sGUQl40qVlj4iijA';

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);
@Injectable({
  providedIn: 'root'
})
export class SupabaseService {
  private supabase: SupabaseClient;
  public user = new BehaviorSubject<User>(null);

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

  // ************** auth ****************

  private loadUser() {
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

  // ************** data ****************

  public getPeople = async () => {
    let { data: people, error } = await supabase
    .from('people')
    .select('id, last_name, first_name, avatar, city, state')
    .order('last_name')
    .order('first_name');
    return { people, error};
  }

  public getPerson = async (id: string) => {
    let { data: people, error } = await supabase
    .from('people')
    .select('*')
    .eq('id', id);
    const person = people[0];
    return { person, error};
  }

  public getCars = async (owner_id: string) => {
    let { data: cars, error } = await supabase
    .from('cars')
    .select('*')
    .eq('owner_id', owner_id);
    return { cars, error};
  }

  public getCar = async (id: string) => {
    let { data: cars, error } = await supabase
    .from('cars')
    .select('*')
    .eq('id', id);
    const car = cars[0];
    return { car, error};
  }


}
