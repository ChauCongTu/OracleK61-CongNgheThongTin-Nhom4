import * as z from "zod";

export const updateDocumentValidation = z.object({
  id: z.number(),
  title: z.string().min(3).max(255),
  summary: z.string().min(3).max(255),
  filePath: z.instanceof(File).or(z.string()),
  type: z.string().min(3).max(255).optional(),
  content: z.string().min(3).optional(),
  thumb: z.instanceof(File).or(z.string()),
  isApproved: z.number().or(z.string()).optional(),
  category_id: z.number().or(z.string()).optional(),
});

export type UpdateDocumentPayload = z.infer<typeof updateDocumentValidation>;
