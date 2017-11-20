.class public final Lcom/google/android/location/activity/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-wide p1, p0, Lcom/google/android/location/activity/b/b;->a:J

    .line 369
    iput p3, p0, Lcom/google/android/location/activity/b/b;->b:I

    .line 370
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/android/location/activity/b/b;->b:I

    invoke-static {v0}, Lcom/google/android/location/activity/b/j;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
