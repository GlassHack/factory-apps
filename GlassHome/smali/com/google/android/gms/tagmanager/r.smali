.class Lcom/google/android/gms/tagmanager/r;
.super Ljava/lang/Object;


# instance fields
.field private Ry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://www.googletagmanager.com"

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/r;->Ry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public gM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/r;->Ry:Ljava/lang/String;

    return-object v0
.end method

.method public setCtfeServerAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "newCtfeAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/r;->Ry:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Ctfe server endpoint was changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->i(Ljava/lang/String;)V

    return-void
.end method
