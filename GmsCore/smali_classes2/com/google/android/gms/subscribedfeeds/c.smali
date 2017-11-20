.class final Lcom/google/android/gms/subscribedfeeds/c;
.super Lcom/google/android/gms/subscribedfeeds/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/n/b/e/a/b;

.field final synthetic b:Lcom/google/android/gms/subscribedfeeds/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/subscribedfeeds/b;Lcom/google/n/b/e/a/b;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/subscribedfeeds/c;->b:Lcom/google/android/gms/subscribedfeeds/b;

    iput-object p2, p0, Lcom/google/android/gms/subscribedfeeds/c;->a:Lcom/google/n/b/e/a/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/subscribedfeeds/f;-><init>(Lcom/google/android/gms/subscribedfeeds/b;B)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/c;->b:Lcom/google/android/gms/subscribedfeeds/b;

    const-string v1, "https://android.clients.google.com/gsync/sub"

    iget-object v2, p0, Lcom/google/android/gms/subscribedfeeds/c;->a:Lcom/google/n/b/e/a/b;

    iget-object v3, v0, Lcom/google/n/b/a/c;->b:Lcom/google/n/b/a/b;

    invoke-interface {v3, v2}, Lcom/google/n/b/a/b;->a(Lcom/google/n/b/b/a;)Lcom/google/n/b/d/a;

    move-result-object v3

    iget-object v4, v0, Lcom/google/n/b/a/c;->a:Lcom/google/n/b/a/a;

    invoke-interface {v4, v1, p1, v3}, Lcom/google/n/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/n/b/d/a;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/n/b/a/c;->a(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/n/b/b/a;

    .line 52
    return-void
.end method
