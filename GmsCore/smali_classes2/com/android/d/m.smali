.class public final Lcom/android/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;

.field public final d:Z


# direct methods
.method public constructor <init>(I[BLjava/util/Map;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/d/m;->a:I

    .line 38
    iput-object p2, p0, Lcom/android/d/m;->b:[B

    .line 39
    iput-object p3, p0, Lcom/android/d/m;->c:Ljava/util/Map;

    .line 40
    iput-boolean p4, p0, Lcom/android/d/m;->d:Z

    .line 41
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2

    .prologue
    .line 48
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/d/m;-><init>(I[BLjava/util/Map;Z)V

    .line 49
    return-void
.end method
