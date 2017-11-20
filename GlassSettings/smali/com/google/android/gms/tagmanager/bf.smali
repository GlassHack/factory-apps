.class final Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;


# static fields
.field static SN:Lcom/google/android/gms/tagmanager/Logger;

.field static SO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/x;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lcom/google/android/gms/tagmanager/bf;->SO:I

    return v0
.end method

.method public static getLogger()Lcom/google/android/gms/tagmanager/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "logLevel"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->setLogLevel(I)V

    return-void
.end method

.method public static setLogger(Lcom/google/android/gms/tagmanager/Logger;)V
    .locals 2
    .param p0, "logger"    # Lcom/google/android/gms/tagmanager/Logger;

    .prologue
    sput-object p0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    sget v1, Lcom/google/android/gms/tagmanager/bf;->SO:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/Logger;->setLogLevel(I)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bf;->SN:Lcom/google/android/gms/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
