.class final Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;
.super Lcom/google/protobuf/Proto2Schema$PositionStrategy;
.source "Proto2Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Proto2Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TablePositionStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Proto2Schema;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Proto2Schema;)V
    .locals 1

    .prologue
    .line 2683
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.TablePositionStrategy;"
    iput-object p1, p0, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Proto2Schema;
    .param p2, "x1"    # Lcom/google/protobuf/Proto2Schema$1;

    .prologue
    .line 2683
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.TablePositionStrategy;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;)V

    return-void
.end method


# virtual methods
.method positionForFieldNumber(I)J
    .locals 2
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2686
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.TablePositionStrategy;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    invoke-static {v0}, Lcom/google/protobuf/Proto2Schema;->access$300(Lcom/google/protobuf/Proto2Schema;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    invoke-static {v0}, Lcom/google/protobuf/Proto2Schema;->access$400(Lcom/google/protobuf/Proto2Schema;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2687
    :cond_0
    const-wide/16 v0, -0x1

    .line 2690
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    invoke-static {v1}, Lcom/google/protobuf/Proto2Schema;->access$300(Lcom/google/protobuf/Proto2Schema;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Proto2Schema;->access$500(Lcom/google/protobuf/Proto2Schema;I)J

    move-result-wide v0

    goto :goto_0
.end method
