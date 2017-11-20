.class public Lcom/google/android/shared/logger/RequestLoggingContext;
.super Ljava/lang/Object;
.source "RequestLoggingContext.java"


# instance fields
.field private final mRequestId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "requestId"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/google/android/shared/logger/RequestLoggingContext;->mRequestId:J

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/android/shared/util/IdGenerator;->toLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/shared/logger/RequestLoggingContext;->mRequestId:J

    .line 18
    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/android/shared/logger/RequestLoggingContext;->mRequestId:J

    return-wide v0
.end method
