.class Lcom/google/android/gms/tagmanager/DelayedHitSender;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/HitSender;


# static fields
.field private static RY:Lcom/google/android/gms/tagmanager/DelayedHitSender;

.field private static final kP:Ljava/lang/Object;


# instance fields
.field private RZ:Ljava/lang/String;

.field private Rn:Lcom/google/android/gms/tagmanager/cc;

.field private Sa:Ljava/lang/String;

.field private Sb:Lcom/google/android/gms/tagmanager/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->kP:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/aq;->M(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/aq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/cs;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/cs;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DelayedHitSender;-><init>(Lcom/google/android/gms/tagmanager/ap;Lcom/google/android/gms/tagmanager/cc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/ap;Lcom/google/android/gms/tagmanager/cc;)V
    .locals 0
    .param p1, "thread"    # Lcom/google/android/gms/tagmanager/ap;
    .param p2, "rateLimiter"    # Lcom/google/android/gms/tagmanager/cc;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Sb:Lcom/google/android/gms/tagmanager/ap;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Rn:Lcom/google/android/gms/tagmanager/cc;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/HitSender;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/google/android/gms/tagmanager/DelayedHitSender;->kP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RY:Lcom/google/android/gms/tagmanager/DelayedHitSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/DelayedHitSender;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/DelayedHitSender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RY:Lcom/google/android/gms/tagmanager/DelayedHitSender;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RY:Lcom/google/android/gms/tagmanager/DelayedHitSender;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public sendHit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Rn:Lcom/google/android/gms/tagmanager/cc;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/cc;->aT()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bf;->w(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Sa:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Sa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending wrapped url hit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Sb:Lcom/google/android/gms/tagmanager/ap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/ap;->bh(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error wrapping URL for testing."

    invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/bf;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUrlWrapModeForTesting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "queryParameter"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->RZ:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/DelayedHitSender;->Sa:Ljava/lang/String;

    return-void
.end method
