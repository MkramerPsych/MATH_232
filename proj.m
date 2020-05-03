function a = proj(vv1,vv2)
% PROJ projects vv2 onto Span(vv1)

    a = vv1'*vv2/(vv1'*vv1)*vv1;
end