.class final Lcom/android/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/d/g;

.field private final b:Lcom/android/d/p;

.field private final c:Lcom/android/d/t;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/d/g;Lcom/android/d/p;Lcom/android/d/t;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/d/i;->a:Lcom/android/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    .line 84
    iput-object p3, p0, Lcom/android/d/i;->c:Lcom/android/d/t;

    .line 85
    iput-object p4, p0, Lcom/android/d/i;->d:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    invoke-virtual {v0}, Lcom/android/d/p;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/d/p;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/d/i;->c:Lcom/android/d/t;

    iget-object v0, v0, Lcom/android/d/t;->c:Lcom/android/d/aa;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    iget-object v1, p0, Lcom/android/d/i;->c:Lcom/android/d/t;

    iget-object v1, v1, Lcom/android/d/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/d/p;->a(Ljava/lang/Object;)V

    .line 106
    :goto_2
    iget-object v0, p0, Lcom/android/d/i;->c:Lcom/android/d/t;

    iget-boolean v0, v0, Lcom/android/d/t;->d:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/d/p;->a(Ljava/lang/String;)V

    .line 113
    :goto_3
    iget-object v0, p0, Lcom/android/d/i;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/d/i;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    iget-object v1, p0, Lcom/android/d/i;->c:Lcom/android/d/t;

    iget-object v1, v1, Lcom/android/d/t;->c:Lcom/android/d/aa;

    invoke-virtual {v0, v1}, Lcom/android/d/p;->b(Lcom/android/d/aa;)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/d/i;->b:Lcom/android/d/p;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/d/p;->b(Ljava/lang/String;)V

    goto :goto_3
.end method
