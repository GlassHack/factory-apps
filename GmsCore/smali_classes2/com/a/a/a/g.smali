.class public Lcom/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/a/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/a/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/w3c/dom/Node;)Lcom/a/a/a/k;
    .locals 5

    .prologue
    .line 89
    new-instance v1, Lcom/a/a/a/k;

    invoke-direct {v1}, Lcom/a/a/a/k;-><init>()V

    .line 90
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/a/g;->b(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 91
    :cond_2
    return-object v1
.end method

.method private static a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xca

    const/4 v2, 0x1

    .line 989
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v4

    .line 990
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_4

    .line 994
    const-string v1, "http://purl.org/dc/1.1/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    const-string v0, "http://purl.org/dc/elements/1.1/"

    .line 1000
    :cond_0
    invoke-interface {v4, v0}, Lcom/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    if-nez v1, :cond_1

    .line 1003
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1004
    :goto_0
    invoke-interface {v4, v0, v1}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    new-instance v5, Lcom/a/a/b/d;

    invoke-direct {v5}, Lcom/a/a/b/d;-><init>()V

    .line 1018
    if-eqz p4, :cond_a

    .line 1022
    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v6

    const-string v7, "_dflt"

    invoke-static {v6, v0, v7, v2}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object p1

    .line 1024
    invoke-virtual {p1, v3}, Lcom/a/a/a/m;->a(Z)V

    .line 1030
    invoke-interface {v4, v1}, Lcom/a/a/e;->c(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1033
    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/a/m;->b(Z)V

    .line 1034
    invoke-virtual {p1, v2}, Lcom/a/a/a/m;->b(Z)V

    move v0, v2

    .line 1040
    :goto_1
    const-string v3, "rdf:li"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1041
    const-string v4, "rdf:value"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1044
    new-instance v6, Lcom/a/a/a/m;

    invoke-direct {v6, v1, p3, v5}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 1046
    invoke-virtual {v6, v0}, Lcom/a/a/a/m;->c(Z)V

    .line 1049
    if-nez v4, :cond_5

    .line 1051
    invoke-virtual {p1, v6}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    .line 1059
    :goto_2
    if-eqz v4, :cond_7

    .line 1061
    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1063
    :cond_2
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Misplaced rdf:value element"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1003
    :cond_3
    const-string v1, "_dflt"

    goto :goto_0

    .line 1010
    :cond_4
    new-instance v0, Lcom/a/a/b;

    const-string v1, "XML namespace required for all elements and attributes"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1055
    :cond_5
    invoke-virtual {p1, v6}, Lcom/a/a/a/m;->b(Lcom/a/a/a/m;)V

    goto :goto_2

    .line 1065
    :cond_6
    invoke-virtual {p1, v2}, Lcom/a/a/a/m;->d(Z)V

    .line 1068
    :cond_7
    if-eqz v3, :cond_9

    .line 1070
    invoke-virtual {p1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1072
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Misplaced rdf:li element"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1074
    :cond_8
    const-string v0, "[]"

    invoke-virtual {v6, v0}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    .line 1077
    :cond_9
    return-object v6

    :cond_a
    move v0, v3

    goto :goto_1
.end method

.method private static a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;
    .locals 2

    .prologue
    .line 1094
    const-string v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1096
    new-instance v1, Lcom/a/a/a/m;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 1102
    return-object v1
.end method

.method private static a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 7

    .prologue
    const/16 v6, 0xcb

    const/4 v0, 0x0

    const/16 v5, 0xca

    .line 164
    invoke-static {p2}, Lcom/a/a/a/g;->c(Lorg/w3c/dom/Node;)I

    move-result v1

    .line 165
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Node element must be rdf:Description or typed node"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    if-nez v1, :cond_1

    .line 172
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Top level typed node not allowed"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    move v1, v0

    .line 176
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    invoke-static {v2}, Lcom/a/a/a/g;->c(Lorg/w3c/dom/Node;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid nodeElement attribute"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    if-lez v1, :cond_3

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Mismatched top level rdf:about values"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3, p3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    goto :goto_1

    .line 177
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/a/a/a/g;->b(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    .line 180
    return-void

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/a/a/a/m;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1118
    sget-boolean v1, Lcom/a/a/a/g;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/m;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1120
    :cond_1
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v1

    .line 1121
    sget-boolean v2, Lcom/a/a/a/g;->a:Z

    if-nez v2, :cond_2

    const-string v2, "rdf:value"

    invoke-virtual {v1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1128
    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1130
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/d;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Redundant xml:lang for rdf:value element"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1135
    :cond_3
    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Lcom/a/a/a/m;->e(Lcom/a/a/a/m;)V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 1141
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/a/a/a/m;->d()I

    move-result v2

    if-gt v0, v2, :cond_5

    .line 1143
    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v2

    .line 1144
    invoke-virtual {p0, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    :cond_5
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v2

    if-gt v0, v2, :cond_6

    .line 1152
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v2

    .line 1153
    invoke-virtual {p0, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1158
    :cond_6
    sget-boolean v0, Lcom/a/a/a/g;->a:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/a/a/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1160
    :cond_7
    invoke-virtual {p0, v4}, Lcom/a/a/a/m;->d(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;

    .line 1162
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/b/d;->a(Lcom/a/a/b/d;)V

    .line 1163
    invoke-virtual {v1}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/a/a/a/m;->b()V

    .line 1166
    invoke-virtual {v1}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 1169
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    goto :goto_2

    .line 1171
    :cond_8
    return-void
.end method

.method private static b(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 10

    .prologue
    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 285
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 286
    invoke-static {v3}, Lcom/a/a/a/g;->b(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 288
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 292
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Expected property element node not found"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 296
    :cond_0
    invoke-static {v3}, Lcom/a/a/a/g;->c(Lorg/w3c/dom/Node;)I

    move-result v2

    const/16 v0, 0x8

    if-eq v2, v0, :cond_1

    const/16 v0, 0xa

    if-gt v0, v2, :cond_2

    const/16 v0, 0xc

    if-gt v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid property element name"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    const/4 v0, 0x7

    if-gt v2, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v9, v0

    move-object v0, v2

    move v2, v9

    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_b
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_18

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xml:lang"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "ID"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_c
    const-string v0, "datatype"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->d(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    .line 283
    :cond_d
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 296
    :cond_e
    const-string v0, "parseType"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->f(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    goto :goto_7

    :cond_10
    const-string v0, "Literal"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/a/a/b;

    const-string v1, "ParseTypeLiteral property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    const-string v0, "Resource"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->e(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    goto :goto_7

    :cond_12
    const-string v0, "Collection"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/a/a/b;

    const-string v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13
    new-instance v0, Lcom/a/a/b;

    const-string v1, "ParseTypeOther property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_15
    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_17

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_16

    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->c(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    goto :goto_7

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->d(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_7

    :cond_18
    invoke-static {p0, p1, v3, p3}, Lcom/a/a/a/g;->f(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_7

    .line 299
    :cond_19
    return-void
.end method

.method private static b(Lorg/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v1

    .line 1187
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1188
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1190
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1196
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static c(Lorg/w3c/dom/Node;)I
    .locals 4

    .prologue
    .line 1256
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1259
    if-nez v0, :cond_1

    const-string v2, "about"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_1

    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1269
    :cond_1
    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1271
    const-string v0, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    const/16 v0, 0x9

    .line 1321
    :goto_0
    return v0

    .line 1275
    :cond_2
    const-string v0, "parseType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1277
    const/4 v0, 0x4

    goto :goto_0

    .line 1279
    :cond_3
    const-string v0, "Description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    const/16 v0, 0x8

    goto :goto_0

    .line 1283
    :cond_4
    const-string v0, "about"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1285
    const/4 v0, 0x3

    goto :goto_0

    .line 1287
    :cond_5
    const-string v0, "resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    const/4 v0, 0x5

    goto :goto_0

    .line 1291
    :cond_6
    const-string v0, "RDF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1293
    const/4 v0, 0x1

    goto :goto_0

    .line 1295
    :cond_7
    const-string v0, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1297
    const/4 v0, 0x2

    goto :goto_0

    .line 1299
    :cond_8
    const-string v0, "nodeID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1301
    const/4 v0, 0x6

    goto :goto_0

    .line 1303
    :cond_9
    const-string v0, "datatype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1305
    const/4 v0, 0x7

    goto :goto_0

    .line 1307
    :cond_a
    const-string v0, "aboutEach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1309
    const/16 v0, 0xa

    goto :goto_0

    .line 1311
    :cond_b
    const-string v0, "aboutEachPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1313
    const/16 v0, 0xb

    goto :goto_0

    .line 1315
    :cond_c
    const-string v0, "bagID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1317
    const/16 v0, 0xc

    goto :goto_0

    .line 1321
    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/16 v9, 0xca

    const/4 v1, 0x0

    .line 489
    if-eqz p3, :cond_1

    const-string v0, "iX:changes"

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    return-void

    .line 495
    :cond_1
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v4

    move v0, v1

    .line 498
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 500
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 501
    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 504
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 509
    const-string v7, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 511
    const-string v5, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    .line 498
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_4
    const-string v3, "ID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 515
    :cond_5
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid attribute for resource property element"

    invoke-direct {v0, v1, v9}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    move v3, v1

    move v0, v1

    .line 529
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_11

    .line 531
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 532
    invoke-static {v5}, Lcom/a/a/a/g;->b(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 534
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v2, :cond_f

    if-nez v0, :cond_f

    .line 536
    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 539
    if-eqz v0, :cond_a

    const-string v7, "Bag"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 541
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    .line 568
    :cond_7
    :goto_2
    invoke-static {p0, v4, v5, v1}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    .line 570
    invoke-virtual {v4}, Lcom/a/a/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 572
    invoke-static {v4}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;)V

    :cond_8
    :goto_3
    move v0, v2

    .line 529
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 543
    :cond_a
    if-eqz v0, :cond_b

    const-string v7, "Seq"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 545
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    goto :goto_2

    .line 547
    :cond_b
    if-eqz v0, :cond_c

    const-string v7, "Alt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 549
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->j()Lcom/a/a/b/d;

    goto :goto_2

    .line 554
    :cond_c
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;

    .line 555
    if-nez v0, :cond_7

    const-string v0, "Description"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 557
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-nez v0, :cond_d

    .line 560
    new-instance v0, Lcom/a/a/b;

    const-string v1, "All XML elements must be in a namespace"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 563
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string v6, "rdf:type"

    invoke-static {v4, v6, v0}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    goto :goto_2

    .line 574
    :cond_e
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 576
    invoke-static {v4}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;)V

    goto :goto_3

    .line 581
    :cond_f
    if-eqz v0, :cond_10

    .line 584
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid child of resource property element"

    invoke-direct {v0, v1, v9}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 589
    :cond_10
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Children of resource property element must be XML elements"

    invoke-direct {v0, v1, v9}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 595
    :cond_11
    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Missing child of resource property element"

    invoke-direct {v0, v1, v9}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static d(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 9

    .prologue
    const/16 v8, 0xca

    const/4 v1, 0x0

    .line 620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v2

    move v0, v1

    .line 622
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 624
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 625
    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 628
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 633
    const-string v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 635
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    .line 622
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_2
    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "datatype"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 640
    :cond_3
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid attribute for literal property element"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 648
    :cond_4
    const-string v0, ""

    .line 649
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 651
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 652
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 658
    :cond_5
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid child of literal property element"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 661
    :cond_6
    invoke-virtual {v2, v0}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private static e(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 699
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;

    move v0, v1

    .line 703
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 705
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 706
    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 709
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 714
    const-string v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 716
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    .line 703
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_2
    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "parseType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 721
    :cond_3
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid attribute for ParseTypeResource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 731
    :cond_4
    invoke-static {p0, v2, p2, v1}, Lcom/a/a/a/g;->b(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V

    .line 733
    invoke-virtual {v2}, Lcom/a/a/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 735
    invoke-static {v2}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;)V

    .line 737
    :cond_5
    return-void
.end method

.method private static f(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Z)V
    .locals 10

    .prologue
    .line 816
    const/4 v5, 0x0

    .line 817
    const/4 v4, 0x0

    .line 818
    const/4 v3, 0x0

    .line 819
    const/4 v2, 0x0

    .line 821
    const/4 v1, 0x0

    .line 823
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Nested content not allowed with rdf:resource or property attributes"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 833
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 834
    const-string v7, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 837
    :cond_1
    invoke-static {v1}, Lcom/a/a/a/g;->c(Lorg/w3c/dom/Node;)I

    move-result v7

    .line 842
    packed-switch v7, :pswitch_data_0

    .line 899
    :pswitch_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unrecognized attribute of empty property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 831
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 849
    :pswitch_2
    if-eqz v3, :cond_2

    .line 851
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 855
    :cond_2
    if-eqz v2, :cond_3

    .line 857
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 862
    :cond_3
    const/4 v4, 0x1

    .line 863
    if-nez v2, :cond_11

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 865
    goto :goto_1

    .line 870
    :pswitch_3
    if-eqz v4, :cond_4

    .line 872
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 876
    :cond_4
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move v9, v2

    move v2, v1

    move v1, v9

    .line 877
    goto :goto_1

    .line 880
    :pswitch_4
    const-string v7, "value"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 883
    if-eqz v4, :cond_5

    .line 885
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 889
    :cond_5
    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 890
    goto :goto_1

    .line 892
    :cond_6
    const-string v7, "xml:lang"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 894
    const/4 v1, 0x1

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v9

    goto :goto_1

    .line 910
    :cond_7
    const-string v1, ""

    invoke-static {p0, p1, p2, v1, p3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v6

    .line 911
    const/4 v3, 0x0

    .line 913
    if-nez v2, :cond_8

    if-eqz v4, :cond_b

    .line 915
    :cond_8
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v6, v1}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 916
    if-nez v2, :cond_10

    .line 919
    invoke-virtual {v6}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/a/a/b/d;->a(IZ)V

    move v1, v3

    .line 928
    :goto_3
    const/4 v2, 0x0

    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 930
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 931
    if-eq v3, v0, :cond_c

    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 935
    :cond_9
    invoke-static {v3}, Lcom/a/a/a/g;->c(Lorg/w3c/dom/Node;)I

    move-result v4

    .line 940
    packed-switch v4, :pswitch_data_1

    .line 967
    :pswitch_5
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unrecognized attribute of empty property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 915
    :cond_a
    const-string v1, ""

    goto :goto_2

    .line 922
    :cond_b
    if-eqz v5, :cond_10

    .line 924
    invoke-virtual {v6}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;

    .line 925
    const/4 v1, 0x1

    goto :goto_3

    .line 947
    :pswitch_6
    const-string v4, "rdf:resource"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    .line 928
    :cond_c
    :goto_5
    :pswitch_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 951
    :pswitch_8
    if-nez v1, :cond_d

    .line 953
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    goto :goto_5

    .line 956
    :cond_d
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 958
    const-string v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/a/a/a/g;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/m;

    goto :goto_5

    .line 962
    :cond_e
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v6, v3, v4, v5}, Lcom/a/a/a/g;->a(Lcom/a/a/a/k;Lcom/a/a/a/m;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/a/a/a/m;

    goto :goto_5

    .line 972
    :cond_f
    return-void

    :cond_10
    move v1, v3

    goto/16 :goto_3

    :cond_11
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_1

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
