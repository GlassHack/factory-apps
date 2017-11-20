.class final Lcom/google/android/apps/lightcycle/util/UrlShortener$1;
.super Landroid/os/AsyncTask;
.source "UrlShortener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/util/UrlShortener;->createShortUrlAsync(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 59
    .local v0, "longUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/UrlShortener;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
