.class final enum Lcom/google/android/gms/tagmanager/ax$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum SB:Lcom/google/android/gms/tagmanager/ax$a;

.field public static final enum SC:Lcom/google/android/gms/tagmanager/ax$a;

.field public static final enum SD:Lcom/google/android/gms/tagmanager/ax$a;

.field private static final synthetic SE:[Lcom/google/android/gms/tagmanager/ax$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/tagmanager/ax$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ax$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/ax$a;->SB:Lcom/google/android/gms/tagmanager/ax$a;

    new-instance v0, Lcom/google/android/gms/tagmanager/ax$a;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/ax$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/ax$a;->SC:Lcom/google/android/gms/tagmanager/ax$a;

    new-instance v0, Lcom/google/android/gms/tagmanager/ax$a;

    const-string v1, "BACKSLASH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/ax$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/ax$a;->SD:Lcom/google/android/gms/tagmanager/ax$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/tagmanager/ax$a;

    sget-object v1, Lcom/google/android/gms/tagmanager/ax$a;->SB:Lcom/google/android/gms/tagmanager/ax$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/tagmanager/ax$a;->SC:Lcom/google/android/gms/tagmanager/ax$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/tagmanager/ax$a;->SD:Lcom/google/android/gms/tagmanager/ax$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/tagmanager/ax$a;->SE:[Lcom/google/android/gms/tagmanager/ax$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ax$a;
    .locals 1

    const-class v0, Lcom/google/android/gms/tagmanager/ax$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ax$a;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/tagmanager/ax$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/ax$a;->SE:[Lcom/google/android/gms/tagmanager/ax$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/ax$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/tagmanager/ax$a;

    return-object v0
.end method
