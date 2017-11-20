.class public final Lcom/google/android/gms/people/internal/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;)Lcom/google/android/gms/common/api/y;
    .locals 6

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/gms/people/internal/b/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/internal/b/h;-><init>(Lcom/google/android/gms/people/internal/b/g;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
