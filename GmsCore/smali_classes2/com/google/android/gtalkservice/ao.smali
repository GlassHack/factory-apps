.class public final enum Lcom/google/android/gtalkservice/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gtalkservice/ao;

.field public static final enum b:Lcom/google/android/gtalkservice/ao;

.field public static final enum c:Lcom/google/android/gtalkservice/ao;

.field public static final enum d:Lcom/google/android/gtalkservice/ao;

.field public static final enum e:Lcom/google/android/gtalkservice/ao;

.field private static final synthetic f:[Lcom/google/android/gtalkservice/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/android/gtalkservice/ao;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gtalkservice/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/ao;->a:Lcom/google/android/gtalkservice/ao;

    .line 49
    new-instance v0, Lcom/google/android/gtalkservice/ao;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gtalkservice/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/ao;->b:Lcom/google/android/gtalkservice/ao;

    .line 50
    new-instance v0, Lcom/google/android/gtalkservice/ao;

    const-string v1, "EXTENDED_AWAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gtalkservice/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/ao;->c:Lcom/google/android/gtalkservice/ao;

    .line 51
    new-instance v0, Lcom/google/android/gtalkservice/ao;

    const-string v1, "DND"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gtalkservice/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/ao;->d:Lcom/google/android/gtalkservice/ao;

    .line 52
    new-instance v0, Lcom/google/android/gtalkservice/ao;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gtalkservice/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/ao;->e:Lcom/google/android/gtalkservice/ao;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gtalkservice/ao;

    sget-object v1, Lcom/google/android/gtalkservice/ao;->a:Lcom/google/android/gtalkservice/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gtalkservice/ao;->b:Lcom/google/android/gtalkservice/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gtalkservice/ao;->c:Lcom/google/android/gtalkservice/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gtalkservice/ao;->d:Lcom/google/android/gtalkservice/ao;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gtalkservice/ao;->e:Lcom/google/android/gtalkservice/ao;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gtalkservice/ao;->f:[Lcom/google/android/gtalkservice/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gtalkservice/ao;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/android/gtalkservice/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/ao;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gtalkservice/ao;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gtalkservice/ao;->f:[Lcom/google/android/gtalkservice/ao;

    invoke-virtual {v0}, [Lcom/google/android/gtalkservice/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gtalkservice/ao;

    return-object v0
.end method
