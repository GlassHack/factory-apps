.class public final Lcom/google/android/location/f/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:J

.field public volatile c:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    .line 33
    iput-wide p2, p0, Lcom/google/android/location/f/aw;->b:J

    .line 34
    iput-wide p2, p0, Lcom/google/android/location/f/aw;->c:J

    .line 35
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/google/android/location/f/aw;->c:J

    .line 56
    iget-object v0, p0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    return-object v0
.end method
