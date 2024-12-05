//2.
import { useState } from "react";
import MenuItem from "./MenuItem";
import { MdHome } from "react-icons/md";
import { RiCustomerService2Fill } from "react-icons/ri";
import { IoPricetags } from "react-icons/io5";
import { FaBloggerB } from "react-icons/fa";

function Menu() {
  return (
    <>
      <nav className="navbar">
        <ul className="menu">
          <MenuItem href="/" icon="home">
            <MdHome />
            home
          </MenuItem>
          <MenuItem href="/services" icon="services">
            <RiCustomerService2Fill />
            services
          </MenuItem>
          <MenuItem href="/pricing" icon="pricing">
            <IoPricetags />
            pricing
          </MenuItem>
          <MenuItem href="/blog" icon="blog">
            <FaBloggerB />
            blog
          </MenuItem>
        </ul>
      </nav>
    </>
  );
}

export default Menu;
