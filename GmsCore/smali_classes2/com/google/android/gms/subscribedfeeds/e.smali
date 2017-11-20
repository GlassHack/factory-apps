.class final Lcom/google/android/gms/subscribedfeeds/e;
.super Lcom/google/android/gms/subscribedfeeds/f;
.source "SourceFile"


# instance fields
.field final synthetic a:[Lcom/google/n/b/c/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/subscribedfeeds/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/subscribedfeeds/b;[Lcom/google/n/b/c/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/gms/subscribedfeeds/e;->c:Lcom/google/android/gms/subscribedfeeds/b;

    iput-object p2, p0, Lcom/google/android/gms/subscribedfeeds/e;->a:[Lcom/google/n/b/c/a;

    iput-object p3, p0, Lcom/google/android/gms/subscribedfeeds/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/subscribedfeeds/f;-><init>(Lcom/google/android/gms/subscribedfeeds/b;B)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/e;->a:[Lcom/google/n/b/c/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/subscribedfeeds/e;->c:Lcom/google/android/gms/subscribedfeeds/b;

    const-class v3, Lcom/google/n/b/e/a/b;

    iget-object v4, p0, Lcom/google/android/gms/subscribedfeeds/e;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/n/b/a/c;->a:Lcom/google/n/b/a/a;

    invoke-interface {v5, v4, p1}, Lcom/google/n/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v2, v2, Lcom/google/n/b/a/c;->b:Lcom/google/n/b/a/b;

    invoke-interface {v2, v3, v4}, Lcom/google/n/b/a/b;->a(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/n/b/c/a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    return-void
.end method
