.class final Lcom/android/d/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/d/p;


# direct methods
.method constructor <init>(Lcom/android/d/p;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/d/q;->c:Lcom/android/d/p;

    iput-object p2, p0, Lcom/android/d/q;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/d/q;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/d/q;->c:Lcom/android/d/p;

    invoke-static {v0}, Lcom/android/d/p;->a(Lcom/android/d/p;)Lcom/android/d/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/android/d/q;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/d/q;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/d/ac;->a(Ljava/lang/String;J)V

    .line 229
    iget-object v0, p0, Lcom/android/d/q;->c:Lcom/android/d/p;

    invoke-static {v0}, Lcom/android/d/p;->a(Lcom/android/d/p;)Lcom/android/d/ac;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/d/ac;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method
