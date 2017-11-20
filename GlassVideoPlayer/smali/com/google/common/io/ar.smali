.class final Lcom/google/common/io/ar;
.super Lcom/google/common/io/ao;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/aq;


# direct methods
.method constructor <init>(Lcom/google/common/io/aq;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/common/io/ar;->a:Lcom/google/common/io/aq;

    invoke-direct {p0}, Lcom/google/common/io/ao;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/common/io/ar;->a:Lcom/google/common/io/aq;

    invoke-static {v0}, Lcom/google/common/io/aq;->a(Lcom/google/common/io/aq;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
