.class final Lcom/google/android/gms/gcm/q;
.super Lcom/google/android/gms/gcm/bb;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/gcm/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/m;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/gms/gcm/q;->b:Lcom/google/android/gms/gcm/m;

    iput-object p2, p0, Lcom/google/android/gms/gcm/q;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/gcm/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/b/a/a/e;)V
    .locals 4

    .prologue
    .line 112
    iget-boolean v0, p3, Lcom/google/b/a/a/e;->n:Z

    if-eqz v0, :cond_0

    iget-wide v0, p3, Lcom/google/b/a/a/e;->k:J

    iget-object v2, p0, Lcom/google/android/gms/gcm/q;->b:Lcom/google/android/gms/gcm/m;

    iget-wide v2, v2, Lcom/google/android/gms/gcm/m;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/gcm/q;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    return-void
.end method
