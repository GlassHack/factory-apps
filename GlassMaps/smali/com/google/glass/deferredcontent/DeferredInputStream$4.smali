.class Lcom/google/glass/deferredcontent/DeferredInputStream$4;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$4;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, -0x1

    return v0
.end method
