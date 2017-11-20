.class public final Lcom/google/android/gms/playlog/service/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gms/playlog/a/c;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/service/a/a;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/android/gms/playlog/service/a/a;->a:Z

    return v0
.end method
