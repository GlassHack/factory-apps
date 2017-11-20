.class final Lcom/google/android/location/h/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/g;


# instance fields
.field final synthetic a:Lcom/google/android/location/h/w;


# direct methods
.method constructor <init>(Lcom/google/android/location/h/w;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    iget-boolean v0, v0, Lcom/google/android/location/h/w;->f:Z

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-interface {p1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v0

    .line 143
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_2

    const-string v2, "ModelStateManager"

    const-string v3, "Received GLS model response..."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    iget-object v2, v2, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    iget-object v3, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    iget-object v3, v3, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/google/android/location/b/p;->a(Lcom/google/g/a/b/b/a;JLcom/google/android/location/f/ad;)Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/location/h/w;->c:Z

    .line 147
    iget-object v1, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    .line 150
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    iget-object v0, v0, Lcom/google/android/location/h/w;->b:Lcom/google/android/location/ao;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/location/h/x;->a:Lcom/google/android/location/h/w;

    iget-object v0, v0, Lcom/google/android/location/h/w;->b:Lcom/google/android/location/ao;

    invoke-interface {v0, p1}, Lcom/google/android/location/ao;->b(Lcom/google/android/location/k/b;)V

    goto :goto_0
.end method
