import { Document } from "@/modules/documents/types";
import { Flex, Header as MHeader, Text } from "@mantine/core";
import { Link } from "react-router-dom";
import { Container } from "@mantine/core";
import SearchInput from "../searchInput";
import classNames from "./styles.module.scss";

interface HeaderProps {
  onSearch: (value: string) => void;
  data?: Document[];
  isLoading?: boolean;
}

const Header = (props: HeaderProps) => {
  return (
    <MHeader height={60} p="md">
      <Container size={1280}>
        <Flex justify={"space-between"}>
          <Link to={"/"} className={classNames.logo}>
            <Text size="md" weight={700}>
              TaiLieuVN
            </Text>
            <img src={"/vite.svg"} />
          </Link>
          <SearchInput {...props} />
        </Flex>
      </Container>

    </MHeader >
  );
};

export default Header;
