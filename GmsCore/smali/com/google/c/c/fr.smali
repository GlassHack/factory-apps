.class final Lcom/google/c/c/fr;
.super Lcom/google/c/c/em;


# instance fields
.field private synthetic a:[Ljava/lang/Object;

.field private synthetic b:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/c/c/fr;->a:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/c/c/fr;->b:I

    invoke-direct {p0, p1, p2}, Lcom/google/c/c/em;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/fr;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/fr;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
