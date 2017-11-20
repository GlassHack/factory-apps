.class abstract Lcom/google/android/maps/driveabout/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/maps/driveabout/b/o;->b:I

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/maps/driveabout/b/o;->b:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
