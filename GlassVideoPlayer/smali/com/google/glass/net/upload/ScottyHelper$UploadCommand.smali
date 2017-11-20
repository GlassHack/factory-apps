.class final enum Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;


# instance fields
.field private final commandString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    .line 41
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "UPLOAD"

    const-string v2, "upload, finalize"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    .line 42
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "QUERY"

    const-string v2, "query"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->commandString:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static fromCommandString(Ljava/lang/String;)Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->values()[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 69
    iget-object v4, v3, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->commandString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    return-object v3

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No mapping from command string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to UploadCommand."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-virtual {v0}, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-object v0
.end method


# virtual methods
.method public final toCommandString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->commandString:Ljava/lang/String;

    return-object v0
.end method
