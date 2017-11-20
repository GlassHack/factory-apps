.class final Lcom/google/android/gms/fitness/b/b/c;
.super Lcom/google/android/gms/fitness/b/b/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/b/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/b/a;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/c;->a:Lcom/google/android/gms/fitness/b/b/a;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/b/a;B)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/c;-><init>(Lcom/google/android/gms/fitness/b/b/a;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/c;->a:Lcom/google/android/gms/fitness/b/b/a;

    return-object v0
.end method

.method final b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/c;->a:Lcom/google/android/gms/fitness/b/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/a;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
