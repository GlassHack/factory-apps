.class public final Lcom/google/android/gms/people/internal/i;
.super Lcom/google/android/gms/common/data/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/model/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gms/people/internal/k;->a:Lcom/google/android/gms/people/internal/k;

    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/people/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/internal/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
