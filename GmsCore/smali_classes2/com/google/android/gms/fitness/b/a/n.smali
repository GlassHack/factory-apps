.class public final Lcom/google/android/gms/fitness/b/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/k;


# instance fields
.field a:Ljava/lang/Float;

.field b:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->a:Ljava/lang/Float;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->b:Ljava/lang/Integer;

    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic a(F)Lcom/google/android/gms/fitness/b/k;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->b:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public final synthetic a(I)Lcom/google/android/gms/fitness/b/k;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->a:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/n;->b:Ljava/lang/Integer;

    return-object p0
.end method
