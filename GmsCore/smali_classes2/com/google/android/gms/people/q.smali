.class public final Lcom/google/android/gms/people/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/people/internal/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;)V
    .locals 6

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/gms/people/internal/l;

    const-string v4, "0"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/q;-><init>(Lcom/google/android/gms/people/internal/l;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/people/internal/l;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    .line 106
    return-void
.end method
