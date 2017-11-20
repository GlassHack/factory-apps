.class final Lcom/google/android/gms/common/data/f;
.super Lcom/google/android/gms/common/data/g;
.source "SourceFile"


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1018
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/data/g;-><init>([Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/g;
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/g;
    .locals 2

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
