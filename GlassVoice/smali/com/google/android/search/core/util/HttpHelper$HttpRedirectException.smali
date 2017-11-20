.class public Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;
.super Lcom/google/android/shared/exception/HttpException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRedirectException"
.end annotation


# instance fields
.field private final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/google/android/shared/exception/HttpException;-><init>(ILjava/lang/String;)V

    .line 226
    iput-object p3, p0, Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;->mLocation:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;->mLocation:Ljava/lang/String;

    return-object v0
.end method
