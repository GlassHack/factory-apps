.class public Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fieldNumber:I

.field public fieldType:Ljava/lang/Class;

.field public isRepeatedField:Z

.field public listType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(ILcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldNumber:I

    .line 51
    invoke-static {p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;->access$000(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->isRepeatedField:Z

    .line 52
    invoke-static {p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;->access$100(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    .line 53
    iget-boolean v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;->access$200(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(ILcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;-><init>(ILcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)V

    return-object v0
.end method

.method public static createRepeated(ILcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;-><init>(ILcom/google/glass/speechlib/com/google/protobuf/nano/Extension$TypeLiteral;)V

    return-object v0
.end method
