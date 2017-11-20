.class final Lcom/google/h/a/b/b/ai;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/h/a/b/b/ah;


# direct methods
.method constructor <init>(Lcom/google/h/a/b/b/ah;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/h/a/b/b/ai;->b:Lcom/google/h/a/b/b/ah;

    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/h/a/b/b/ai;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/h/a/b/b/ac;->a()V

    .line 159
    iget-object v0, p0, Lcom/google/h/a/b/b/ai;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/h/a/b/b/ac;->a()V

    .line 160
    iget-object v0, p0, Lcom/google/h/a/b/b/ai;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->c(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/t;

    .line 161
    return-void
.end method
