.class final Lcom/google/android/gms/fitness/f/t;
.super Lcom/google/android/gms/fitness/f/b;
.source "SourceFile"


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/fitness/f/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/fitness/f/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/f/b;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/google/android/gms/fitness/f/t;->g:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/google/android/gms/fitness/f/t;->h:Lcom/google/android/gms/fitness/f/a;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/t;->g:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-direct {v0, v6, v6, v1}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 37
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/t;->h:Lcom/google/android/gms/fitness/f/a;

    iget-object v2, p0, Lcom/google/android/gms/fitness/f/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 30
    array-length v3, p2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p2, v0

    .line 31
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/google/android/gms/fitness/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-direct {v0, v6, v6, v1}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v6, v1}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto :goto_0
.end method
