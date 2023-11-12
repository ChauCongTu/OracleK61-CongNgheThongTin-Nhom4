import useLogout from "@/modules/auth/services/useLogout";
import { User, UserRole } from "@/modules/auth/types";
import {
  Button,
  Center,
  Container,
  Flex,
  Space,
  Text,
  Title,
} from "@mantine/core";
import { FC } from "react";
import { Link } from "react-router-dom";

interface HomeUserInfoProps {
  user: User;
}

const HomeUserInfo: FC<HomeUserInfoProps> = ({ user }) => {
  const { logout } = useLogout();

  return (
    <Container>
      <Center>
        <Flex direction={"column"} align={"center"}>
          <Text size={18}>Xin chào</Text>
          <Text weight={700} size={24}>{user.firstName + " " + user.lastName}</Text>
          <Space h={"sm"} />
          <Flex gap={"lg"}>
            {user.role === UserRole.Admin && (
              <Link
                to={"/admin"}
                style={{
                  textDecoration: "none",
                  color: "inherit",
                }}
              >
                <Button>
                  <span>Đến trang quản trị</span>
                </Button>
              </Link>
            )}
            <Button onClick={logout}>
              <span>Đăng xuất</span>
            </Button>
          </Flex>
        </Flex>
      </Center>
    </Container>
  );
};

export default HomeUserInfo;
