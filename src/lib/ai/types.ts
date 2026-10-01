export interface AIProvider {
  generateText(prompt: string): Promise<string>;
  analyzeCampaign(input: unknown): Promise<unknown>;
  researchCompany(input: unknown): Promise<unknown>;
  generateEmail(input: unknown): Promise<unknown>;
  classifyReply(input: unknown): Promise<unknown>;
}
