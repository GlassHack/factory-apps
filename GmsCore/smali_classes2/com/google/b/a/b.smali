.class final Lcom/google/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/protobuf/a/b;

.field final synthetic b:Lcom/google/b/a/a;


# direct methods
.method constructor <init>(Lcom/google/b/a/a;Lcom/google/protobuf/a/b;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/b/a/b;->b:Lcom/google/b/a/a;

    iput-object p2, p0, Lcom/google/b/a/b;->a:Lcom/google/protobuf/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/b/a/b;->b:Lcom/google/b/a/a;

    iget-object v1, p0, Lcom/google/b/a/b;->a:Lcom/google/protobuf/a/b;

    invoke-static {v0, v1}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a;Lcom/google/protobuf/a/b;)V

    .line 680
    return-void
.end method
