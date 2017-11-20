.class final Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;
.super Lcom/google/protobuf/Proto3Schema$PositionStrategy;
.source "Proto3Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Proto3Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TablePositionStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Proto3Schema;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Proto3Schema;)V
    .locals 1

    .prologue
    .line 2035
    .local p0, "this":Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto3Schema<TT;>.TablePositionStrategy;"
    iput-object p1, p0, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto3Schema;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Proto3Schema;Lcom/google/protobuf/Proto3Schema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Proto3Schema;
    .param p2, "x1"    # Lcom/google/protobuf/Proto3Schema$1;

    .prologue
    .line 2035
    .local p0, "this":Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto3Schema<TT;>.TablePositionStrategy;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema;)V

    return-void
.end method


# virtual methods
.method positionForFieldNumber(I)J
    .locals 2
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2038
    .local p0, "this":Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto3Schema<TT;>.TablePositionStrategy;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto3Schema;

    invoke-static {v0}, Lcom/google/protobuf/Proto3Schema;->access$300(Lcom/google/protobuf/Proto3Schema;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto3Schema;

    invoke-static {v0}, Lcom/google/protobuf/Proto3Schema;->access$400(Lcom/google/protobuf/Proto3Schema;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2039
    :cond_0
    const-wide/16 v0, -0x1

    .line 2042
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto3Schema;

    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto3Schema;

    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->access$300(Lcom/google/protobuf/Proto3Schema;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Proto3Schema;->access$500(Lcom/google/protobuf/Proto3Schema;I)J

    move-result-wide v0

    goto :goto_0
.end method
