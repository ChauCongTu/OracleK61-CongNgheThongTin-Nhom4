import BaseDocViewer, { DocViewerRenderers } from "@cyntler/react-doc-viewer";
import { Container, Modal } from "@mantine/core";
import { FC } from "react";

interface DocViewerProps {
  open: boolean;
  onClose: () => void;
  docs: { uri: string; fileType?: string }[];
}

const DocViewer: FC<DocViewerProps> = ({ open, onClose, docs, ...props }) => {
  return (
    <Modal
      opened={open}
      onClose={onClose}
      centered
      size={"100vw"}
      transitionProps={{
        transition: "scale",
      }}
    >
      <Container h={"80vh"}>
        <BaseDocViewer
          pluginRenderers={DocViewerRenderers}
          documents={docs}
          {...props}
        />
      </Container>
    </Modal>
  );
};

export default DocViewer;
