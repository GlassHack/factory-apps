.class Lcom/google/glass/net/ProtoRequestDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$1;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$Request;)I
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-nez v0, :cond_0

    .line 262
    const/4 v0, -0x1

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-boolean v0, p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 258
    check-cast p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    check-cast p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/net/ProtoRequestDispatcher$1;->compare(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$Request;)I

    move-result v0

    return v0
.end method
