.class final Lcom/google/android/gms/subscribedfeeds/d;
.super Lcom/google/android/gms/subscribedfeeds/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/n/b/e/a/b;

.field final synthetic b:Lcom/google/android/gms/subscribedfeeds/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/subscribedfeeds/b;Lcom/google/n/b/e/a/b;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/subscribedfeeds/d;->b:Lcom/google/android/gms/subscribedfeeds/b;

    iput-object p2, p0, Lcom/google/android/gms/subscribedfeeds/d;->a:Lcom/google/n/b/e/a/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/subscribedfeeds/f;-><init>(Lcom/google/android/gms/subscribedfeeds/b;B)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/d;->b:Lcom/google/android/gms/subscribedfeeds/b;

    iget-object v1, p0, Lcom/google/android/gms/subscribedfeeds/d;->a:Lcom/google/n/b/e/a/b;

    iget-object v1, v1, Lcom/google/n/b/b/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/n/b/a/c;->a:Lcom/google/n/b/a/a;

    invoke-interface {v0, v1, p1}, Lcom/google/n/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
