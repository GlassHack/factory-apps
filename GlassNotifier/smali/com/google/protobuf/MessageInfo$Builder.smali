.class public final Lcom/google/protobuf/MessageInfo$Builder;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private messageSetWireFormat:Z

.field private syntax:Lcom/google/protobuf/ProtoSyntax;

.field private wasBuilt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->fields:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numFields"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->fields:Ljava/util/ArrayList;

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/MessageInfo;
    .locals 5

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->wasBuilt:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->syntax:Lcom/google/protobuf/ProtoSyntax;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->wasBuilt:Z

    .line 147
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->fields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 148
    new-instance v0, Lcom/google/protobuf/MessageInfo;

    iget-object v1, p0, Lcom/google/protobuf/MessageInfo$Builder;->syntax:Lcom/google/protobuf/ProtoSyntax;

    iget-boolean v2, p0, Lcom/google/protobuf/MessageInfo$Builder;->messageSetWireFormat:Z

    iget-object v3, p0, Lcom/google/protobuf/MessageInfo$Builder;->fields:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/MessageInfo;-><init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;Lcom/google/protobuf/MessageInfo$1;)V

    return-object v0
.end method

.method public withField(Lcom/google/protobuf/FieldInfo;)V
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/FieldInfo;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->wasBuilt:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public withMessageSetWireFormat(Z)V
    .locals 0
    .param p1, "messageSetWireFormat"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/google/protobuf/MessageInfo$Builder;->messageSetWireFormat:Z

    .line 130
    return-void
.end method

.method public withSyntax(Lcom/google/protobuf/ProtoSyntax;)V
    .locals 1
    .param p1, "syntax"    # Lcom/google/protobuf/ProtoSyntax;

    .prologue
    .line 125
    const-string v0, "syntax"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ProtoSyntax;

    iput-object v0, p0, Lcom/google/protobuf/MessageInfo$Builder;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 126
    return-void
.end method
