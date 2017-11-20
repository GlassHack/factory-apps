.class final Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;
.super Landroid/os/AsyncTask;
.source "ViewLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/ViewLicensesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LicenseFileLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x800

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v0, "data":Ljava/lang/StringBuilder;
    const/16 v7, 0x800

    :try_start_0
    new-array v5, v7, [C

    .line 176
    .local v5, "tmp":[C
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    const-string v8, ".gz"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v2    # "inputReader":Ljava/io/InputStreamReader;
    .local v3, "inputReader":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 182
    .end local v3    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputReader":Ljava/io/InputStreamReader;
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, "numRead":I
    if-ltz v4, :cond_1

    .line 183
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    .end local v4    # "numRead":I
    .end local v5    # "tmp":[C
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "License HTML file not found at %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 200
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v6

    .line 179
    .restart local v5    # "tmp":[C
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputReader":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputReader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 192
    .restart local v4    # "numRead":I
    :cond_1
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "License HTML is empty (from %s)"

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v4    # "numRead":I
    .end local v5    # "tmp":[C
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Error reading license HTML file at %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v6

    .line 200
    .restart local v4    # "numRead":I
    .restart local v5    # "tmp":[C
    :cond_2
    iget-object v6, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$100(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "licenses":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$200(Lcom/google/glass/settings/ui/ViewLicensesActivity;Landroid/util/Pair;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$300(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
