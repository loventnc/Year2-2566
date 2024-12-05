//2.

function MenuItem = ({ href, icon }) => {
  return (
    <>
      <li className="menu-item">
        <a className="menu-link" href={props.href}>
          {props.icon}
        </a>
      </li>
    </>
  );
};

export default MenuItem;
