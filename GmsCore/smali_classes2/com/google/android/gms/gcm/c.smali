.class final Lcom/google/android/gms/gcm/c;
.super Lcom/google/android/gms/gcm/bb;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/gcm/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/gms/gcm/c;->b:Lcom/google/android/gms/gcm/b;

    iput-object p2, p0, Lcom/google/android/gms/gcm/c;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/gcm/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/b/a/a/e;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gms/gcm/c;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/gcm/c;->b:Lcom/google/android/gms/gcm/b;

    iget-object v0, v0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/gcm/g;->b(Lcom/google/b/a/a/e;)V

    .line 216
    :cond_0
    return-void
.end method
