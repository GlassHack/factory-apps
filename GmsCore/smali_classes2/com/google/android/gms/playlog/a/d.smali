.class public final Lcom/google/android/gms/playlog/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "gms:playlog:test:test_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/d;->a:Lcom/google/android/gms/common/a/b;

    return-void
.end method
