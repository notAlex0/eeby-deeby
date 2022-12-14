function E = getEnergyRigid(D,L,dq0,dq1,dtht0,dtht1,footX,footY,g,k,m,phi,q0,q1,tht0,tht1)
%getEnergyRigid
%    E = getEnergyRigid(D,L,DQ0,DQ1,DTHT0,DTHT1,footX,footY,G,K,M,PHI,Q0,Q1,THT0,THT1)

%    This function was generated by the Symbolic Math Toolbox version 9.1.
%    09-Jan-2023 11:58:19

t2 = cos(q0);
t3 = cos(q1);
t4 = sin(q0);
t5 = sin(q1);
t6 = phi+tht0;
t7 = D.^2;
t8 = L.^2;
t9 = q0.^2;
t10 = q0.^3;
t11 = q1.^2;
t13 = q1.^3;
t16 = phi+q1+tht1;
t17 = -q1;
t18 = 1.0./q0;
t24 = -tht0;
t25 = -tht1;
t12 = t9.^2;
t14 = t11.^2;
t15 = q0+t6;
t19 = 1.0./t9;
t20 = 1.0./t11;
t22 = 1.0./t13;
t26 = t8.*8.0;
t27 = t8.*2.4e+1;
t28 = t25+tht0;
t32 = q1+t24+tht1;
t44 = t8.*t9.*1.2e+1;
t45 = t8.*t11.*3.6e+1;
t46 = t2.*t8.*-8.0;
t47 = q0.*t4.*t8.*-8.0;
t48 = q1.*t5.*t8.*-2.4e+1;
t21 = 1.0./t12;
t23 = 1.0./t14;
t29 = -t27;
t30 = cos(t28);
t31 = q0+t28;
t33 = sin(t28);
t34 = t7.*t12;
t35 = t7.*t14;
t37 = cos(t32);
t39 = sin(t32);
t40 = t2.*t26;
t41 = t3.*t27;
t42 = q0.*t4.*t26;
t43 = q1.*t5.*t27;
t53 = t9.*t46;
t36 = cos(t31);
t38 = sin(t31);
t49 = t9.*t40;
t50 = t17+t31;
t54 = t8.*t30.*1.2e+1;
t55 = t27.*t30;
t56 = t8.*t33.*1.2e+1;
t58 = t8.*t30.*-2.4e+1;
t62 = t8.*t37.*1.2e+1;
t64 = t27.*t37;
t65 = m.*t27.*t33;
t67 = t8.*t39.*1.2e+1;
t69 = m.*t27.*t39;
t72 = q1.*t27.*t39;
t80 = q1.*t8.*t37.*-1.2e+1;
t83 = m.*q1.*t8.*t37.*-2.4e+1;
t88 = t8.*t11.*t37.*-1.2e+1;
t97 = m.*t8.*t11.*t39.*-1.2e+1;
t119 = t29+t35+t41+t45+t48;
t120 = t26+t34+t44+t46+t47+t53;
t51 = cos(t50);
t52 = sin(t50);
t57 = -t54;
t59 = q0.*q1.*t7.*t36;
t60 = q0.*q1.*t7.*t38;
t61 = t8.*t36.*1.2e+1;
t63 = t27.*t36;
t66 = t8.*t38.*1.2e+1;
t68 = m.*t27.*t38;
t71 = q1.*t67;
t74 = q1.*t62;
t75 = m.*t8.*t38.*-2.4e+1;
t76 = q0.*t7.*t17.*t36;
t78 = m.*q1.*t64;
t79 = q1.*t7.*t9.*t38;
t81 = m.*q1.*t7.*t9.*t36;
t82 = t11.*t62;
t90 = t7.*t9.*t17.*t38;
t91 = m.*t11.*t67;
t92 = m.*t7.*t9.*t17.*t36;
t70 = q0.*t66;
t73 = -t66;
t77 = m.*q0.*t63;
t84 = q0.*q1.*t7.*t51;
t85 = q0.*q1.*t7.*t52;
t86 = t8.*t51.*1.2e+1;
t87 = t27.*t51;
t89 = t8.*t52.*1.2e+1;
t94 = t8.*t51.*-2.4e+1;
t96 = m.*t27.*t52;
t100 = q1.*t27.*t52;
t104 = q0.*t7.*t17.*t52;
t105 = q0.*t7.*t11.*t52;
t106 = q1.*t7.*t9.*t52;
t107 = q0.*t8.*t52.*-1.2e+1;
t110 = q0.*q1.*t8.*t51.*-1.2e+1;
t112 = m.*q1.*t7.*t9.*t51;
t116 = m.*t7.*t9.*t11.*t52;
t117 = m.*t8.*t11.*t52.*-1.2e+1;
t93 = -t86;
t95 = q1.*t86;
t98 = q0.*t89;
t99 = q1.*t89;
t101 = m.*q0.*t87;
t102 = m.*q1.*t87;
t108 = t11.*t86;
t109 = m.*q0.*t94;
t111 = q0.*q1.*t96;
t113 = -t105;
t114 = m.*t11.*t89;
t118 = -t116;
t103 = q0.*t95;
t115 = m.*q0.*t108;
t121 = t56+t60+t67+t73+t80+t89+t95+t104;
t122 = t57+t61+t62+t70+t71+t90+t93+t99+t106+t107+t110;
t123 = t58+t63+t64+t72+t76+t84+t88+t94+t100+t108+t113;
t124 = t65+t69+t75+t77+t83+t92+t96+t97+t102+t109+t111+t112+t115+t117+t118;
et1 = (dtht1.*((dq1.*m.*t23.*t119)./2.4e+1+(dtht1.*m.*t22.*(q1.*t27-t5.*t8.*2.4e+1+t7.*t13))./1.2e+1-(dq0.*m.*t19.*t20.*t122)./1.2e+1+(dtht0.*m.*t18.*t20.*t121)./1.2e+1))./2.0+(dq1.*((dtht1.*m.*t23.*t119)./2.4e+1+(dq0.*t19.*t22.*t124)./1.2e+1+(dq1.*m.*1.0./q1.^5.*(t5.*t8.*-1.44e+2+t8.*t13.*4.8e+1+q1.^5.*t7+q1.*t3.*t8.*1.44e+2))./3.6e+1+(dtht0.*m.*t18.*t22.*t123)./1.2e+1))./2.0+(k.*t9)./2.0+(k.*t11)./2.0;
et2 = (dtht0.*((dq0.*m.*t21.*t120)./8.0+(dtht0.*m.*(q0.*t27-t4.*t8.*1.2e+1+t7.*t10-q0.*t2.*t8.*1.2e+1))./(t10.*6.0)+(dq1.*m.*t18.*t22.*t123)./1.2e+1+(dtht1.*m.*t18.*t20.*t121)./1.2e+1))./2.0+(dq0.*((dtht0.*m.*t21.*t120)./8.0+(dq1.*t19.*t22.*t124)./1.2e+1+(dq0.*m.*t18.^5.*(q0.*t8.*3.6e+1-t4.*t8.*3.6e+1+t8.*t10.*1.2e+1+t7.*1.0./t18.^5-t4.*t8.*t9.*1.8e+1))./9.0-(dtht1.*m.*t19.*t20.*t122)./1.2e+1))./2.0+footY.*g.*m.*cos(phi).*2.0+footX.*g.*m.*sin(phi).*2.0-L.*g.*m.*t20.*(cos(phi+tht1)-cos(t16))+(L.*g.*m.*sin(t16))./q1+L.*g.*m.*t19.*(cos(t6)-cos(t15));
et3 = L.*g.*m.*t18.*sin(t6).*-2.0+L.*g.*m.*t18.*sin(t15);
E = et1+et2+et3;
