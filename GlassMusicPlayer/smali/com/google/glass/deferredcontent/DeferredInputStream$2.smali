.class Lcom/google/glass/deferredcontent/DeferredInputStream$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$2;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$2;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
