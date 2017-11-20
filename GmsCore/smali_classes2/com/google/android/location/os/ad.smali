.class final Lcom/google/android/location/os/ad;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZZI)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/location/os/ad;->d:Lcom/google/android/location/os/e;

    iput-boolean p5, p0, Lcom/google/android/location/os/ad;->a:Z

    iput-boolean p6, p0, Lcom/google/android/location/os/ad;->b:Z

    iput p7, p0, Lcom/google/android/location/os/ad;->c:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 308
    const-string v0, "onWifi: %s, onCellular: %s, wifiNetworkId: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/location/os/ad;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/location/os/ad;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/location/os/ad;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    return-void
.end method
