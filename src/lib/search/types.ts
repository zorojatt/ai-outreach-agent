export interface SearchProvider {
  searchWeb(query: string): Promise<unknown[]>;
  searchCompanies(query: string): Promise<unknown[]>;
  searchContacts(query: string): Promise<unknown[]>;
}
