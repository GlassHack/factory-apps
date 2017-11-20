.class public final Lcom/google/android/gms/fitness/b/c/ab;
.super Lcom/google/android/gms/fitness/b/c/aa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/b/b;)V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x1

    const-string v1, "overlay_user_input"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/fitness/b/c/aa;-><init>(ZLcom/google/android/gms/fitness/b/b;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/google/android/gms/fitness/b/r;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    const-string v1, "com.google.activity.segment"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/fitness/b/c/ac;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/b/c/ac;-><init>(Lcom/google/android/gms/fitness/b/c/ab;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iput-boolean p2, v0, Lcom/google/android/gms/fitness/b/s;->e:Z

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const-string v1, "user_input"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/b/c/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "default_activity_segments"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/b/c/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v0
.end method
