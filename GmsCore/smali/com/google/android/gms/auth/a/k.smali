.class public final Lcom/google/android/gms/auth/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/auth/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/a/c;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/auth/a/k;->a:Lcom/google/android/gms/auth/a/c;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/auth/a/k;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/a/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/a/k;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/a/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    const-string v0, "UID %s is not associated with a first party app!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method
