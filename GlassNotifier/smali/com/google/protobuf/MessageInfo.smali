.class final Lcom/google/protobuf/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/protobuf/ProtoSyntax;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;)V
    .locals 0
    .param p1, "syntax"    # Lcom/google/protobuf/ProtoSyntax;
    .param p2, "messageSetWireFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ProtoSyntax;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/protobuf/MessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 27
    iput-boolean p2, p0, Lcom/google/protobuf/MessageInfo;->messageSetWireFormat:Z

    .line 28
    iput-object p3, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;Lcom/google/protobuf/MessageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ProtoSyntax;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/google/protobuf/MessageInfo$1;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageInfo;-><init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/MessageInfo$Builder;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/protobuf/MessageInfo$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/MessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/google/protobuf/MessageInfo$Builder;
    .locals 1
    .param p0, "numFields"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/google/protobuf/MessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/google/protobuf/MessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public enumFieldMap()Lcom/google/protobuf/Int2ObjectHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V

    .line 77
    .local v0, "enumMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Lcom/google/protobuf/Internal$EnumLiteMap<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldInfo;

    .line 79
    .local v1, "fd":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getEnumMap()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v3

    .line 80
    .local v3, "value":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "fd":Lcom/google/protobuf/FieldInfo;
    .end local v3    # "value":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    :cond_1
    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/protobuf/MessageInfo;->messageSetWireFormat:Z

    return v0
.end method

.method public mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V

    .line 89
    .local v0, "defaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 90
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldInfo;

    .line 91
    .local v1, "fd":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 92
    .local v2, "fieldNumber":I
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v4, v5, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "fd":Lcom/google/protobuf/FieldInfo;
    .end local v2    # "fieldNumber":I
    :cond_1
    return-object v0
.end method

.method public messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V

    .line 52
    .local v0, "classMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldInfo;

    .line 54
    .local v1, "fd":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 57
    .local v2, "fieldNumber":I
    sget-object v4, Lcom/google/protobuf/MessageInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 52
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 60
    :goto_2
    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getOneofStoredType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    .line 66
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getListElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    .end local v1    # "fd":Lcom/google/protobuf/FieldInfo;
    .end local v2    # "fieldNumber":I
    :cond_1
    return-object v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
