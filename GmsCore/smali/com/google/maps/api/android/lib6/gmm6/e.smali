.class public final enum Lcom/google/maps/api/android/lib6/gmm6/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum b:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum c:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum d:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum e:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum f:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static enum g:Lcom/google/maps/api/android/lib6/gmm6/e;

.field private static final synthetic j:[Lcom/google/maps/api/android/lib6/gmm6/e;


# instance fields
.field private h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "STARTUP_GMM"

    const-string v2, "GMM startup"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->b:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "STARTUP_DRIVEABOUT"

    const-string v2, "Driveabout startup"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->c:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "STARTUP_COMMON"

    const-string v2, "GMM or Driveabout startup"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->d:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "TERMS_AND_CONDITIONS"

    const-string v2, "Term and conditions"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->e:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "ON_RESUME"

    const-string v2, "On resume"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->a:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "GENERAL"

    const/4 v2, 0x5

    const-string v3, "General"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->f:Lcom/google/maps/api/android/lib6/gmm6/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    const-string v1, "GENERAL_ONE_TIME"

    const/4 v2, 0x6

    const-string v3, "General one time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->g:Lcom/google/maps/api/android/lib6/gmm6/e;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/e;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->b:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->c:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->d:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->e:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->a:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/e;->f:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/e;->g:Lcom/google/maps/api/android/lib6/gmm6/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->j:[Lcom/google/maps/api/android/lib6/gmm6/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/e;->h:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/gmm6/e;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e;->i:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/e;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/e;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/e;->j:[Lcom/google/maps/api/android/lib6/gmm6/e;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[oneTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
