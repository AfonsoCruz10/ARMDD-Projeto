# Tabelas

Este documento descreve as tabelas utilizadas no sistema, incluindo detalhes sobre os campos, tipos de dados e descrições. As tabelas estão divididas por regiões (UK e USA) e incluem informações específicas para cada uma.

## Costumers UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| CustomerID       | int             | Identificação única do cliente.                                          |
| CompanyName      | nvarchar(40)    | Nome da empresa do cliente.                                              |
| ContactName      | nvarchar(30)    | Nome da pessoa de contato no cliente.                                    |
| ContactTitleID   | int             | Identificação do título ou cargo da pessoa de contato (pode estar relacionado a uma tabela de cargos). |
| Address          | nvarchar(60)    | Endereço do cliente.                                                     |
| CityID           | int             | Identificação da cidade onde o cliente está localizado (provavelmente relacionado a uma tabela de cidades). |
| RegionID         | int             | Identificação da região onde o cliente está localizado (relacionado a uma tabela de regiões). |
| PostalCode       | nvarchar(10)    | Código postal do cliente.                                                |
| CountryCode      | nchar(2)        | Código do país onde o cliente está localizado (provavelmente um código ISO de dois caracteres). |
| Phone            | nvarchar(24)    | Número de telefone do cliente.                                           |
| Fax              | nvarchar(24)    | Número de fax do cliente (opcional).                                     |
| CreateDate       | date            | Data de criação do registro do cliente.                                  |
| LastUpdateDate   | date            | Data da última atualização do registro do cliente.                       |

## Costumers USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| CustomerID       | string          | Identificação única de cada cliente.                                      |
| CompanyName      | string          | Nome da empresa cliente.                                                  |
| ContactName      | string          | Nome da pessoa de contato na empresa.                                     |
| ContactTitle     | string          | Título ou cargo da pessoa de contato.                                     |
| Address          | string          | Endereço da empresa cliente.                                              |
| City             | string          | Cidade onde a empresa está localizada.                                    |
| RegionID         | int             | ID da região correspondente.                                              |
| PostalCode       | string          | Código postal do endereço.                                                |
| Country          | string          | País onde a empresa está localizada.                                      |
| Phone            | string          | Número de telefone do cliente.                                            |
| Fax              | string          | Número de fax do cliente (opcional).                                      |

## Employees UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| EmployeeID       | int             | Identificação única do empregado.                                         |
| LastName         | nvarchar(20)    | Sobrenome do empregado.                                                   |
| FirstName        | nvarchar(10)    | Nome do empregado.                                                        |
| TitleID          | int             | Identificação do título ou cargo do empregado (relacionado a uma tabela de títulos). |
| TitleOfCourtesy  | nvarchar(25)    | Título de cortesia do empregado (como Sr., Sra., Dr., etc.).              |
| BirthDate        | date            | Data de nascimento do empregado.                                          |
| HireDate         | date            | Data de contratação do empregado.                                         |
| Address          | nvarchar(60)    | Endereço do empregado.                                                    |
| CityID           | int             | Identificação da cidade onde o empregado reside (provavelmente relacionado a uma tabela de cidades). |
| RegionID         | int             | Identificação da região onde o empregado reside (relacionado a uma tabela de regiões). |
| PostalCode       | nvarchar(10)    | Código postal do endereço do empregado.                                   |
| HomePhone        | nvarchar(24)    | Número de telefone residencial do empregado.                              |
| Extension        | nvarchar(4)     | Número de ramal no sistema telefônico da empresa.                         |
| Photo            | image           | Foto do empregado.                                                        |
| Notes            | ntext           | Notas adicionais sobre o empregado (informações pessoais ou de trabalho).  |
| ReportsTo        | int             | ID do superior imediato do empregado (relacionado ao EmployeeID).         |
| PhotoPath        | nvarchar(255)   | Caminho do arquivo de foto do empregado.                                  |
| CreateDate       | date            | Data de criação do registro do empregado.                                 |
| LastUpdateDate   | date            | Data da última atualização do registro do empregado.                      |

## Employees USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| EmployeeID       | int             | Identificação única de cada empregado.                                    |
| Name             | string          | Nome do empregado.                                                        |
| Title            | string          | Cargo ou título do empregado na empresa.                                  |
| BirthDate        | date            | Data de nascimento do empregado.                                          |
| HireDate         | date            | Data de contratação do empregado.                                         |
| Address          | string          | Endereço do empregado.                                                    |
| City             | string          | Cidade onde o empregado reside.                                           |
| RegionID         | int             | ID da região correspondente.                                              |
| PostalCode       | string          | Código postal do endereço do empregado.                                   |
| HomePhone        | string          | Número de telefone residencial do empregado.                              |
| Extension        | string          | Número de ramal no sistema telefônico da empresa.                         |
| Obs              | string          | Observações adicionais sobre o empregado, como formação educacional ou conquistas. |
| ReportsTo        | int             | ID do superior imediato (relacionado ao EmployeeID).                      |

## OrdersDetails UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| OrderID          | int             | Identificação única do pedido.                                            |
| ProductID        | int             | Identificação única do produto no pedido.                                 |
| UnitPrice        | money           | Preço unitário do produto no momento do pedido.                           |
| Quantity         | smallint        | Quantidade do produto no pedido.                                          |
| Discount         | float           | Desconto aplicado ao produto no pedido, representado como uma porcentagem ou valor decimal. |
| CreateDate       | date            | Data de criação do registro do pedido.                                    |
| LastUpdateDate   | date            | Data da última atualização do registro do pedido.                         |

## Orders Details USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| OrderID          | int             | Identificação única do pedido.                                            |
| ProductID        | int             | Identificação do produto incluído no pedido.                              |
| UnitPrice        | decimal         | Preço unitário do produto no momento do pedido.                           |
| Quantity         | int             | Quantidade do produto solicitada no pedido.                               |
| Discount         | decimal         | Desconto aplicado ao produto (se houver).                                 |

## Orders UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| OrderID          | int             | Identificação única do pedido.                                            |
| CustomerID       | int             | Identificação do cliente que fez o pedido.                                |
| EmployeeID       | int             | Identificação do empregado responsável pelo pedido.                       |
| OrderDate        | date            | Data em que o pedido foi realizado.                                       |
| RequiredDate     | date            | Data em que o pedido deve ser entregue.                                   |
| ShippedDate      | date            | Data em que o pedido foi despachado.                                      |
| ShipperID        | int             | Identificação da transportadora responsável pelo envio do pedido.         |
| Freight          | money           | Valor do frete (custo de envio) associado ao pedido.                      |
| ShipToID         | int             | Identificação do endereço de destino para entrega (pode estar relacionado a um endereço específico ou entidade de destino). |
| CreateDate       | date            | Data de criação do registro do pedido.                                    |
| LastUpdateDate   | date            | Data da última atualização do registro do pedido.                         |

## Orders USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| OrderID          | int             | Identificação única do pedido.                                            |
| CustomerID       | string          | Identificação única do cliente que fez o pedido.                          |
| EmployeeID       | int             | Identificação do empregado que processou o pedido.                        |
| OrderDate        | date            | Data em que o pedido foi realizado.                                       |
| RequiredDate     | date            | Data prevista para o pedido ser entregue ao cliente.                      |
| ShippedDate      | date            | Data em que o pedido foi enviado.                                         |
| ShipperID        | int             | Identificação do transportador que enviou o pedido.                       |
| Freight          | decimal         | Custo de transporte do pedido.                                            |
| ShipName         | string          | Nome da empresa ou pessoa que vai receber o pedido.                       |
| ShipAddress      | string          | Endereço de entrega do pedido.                                            |
| ShipCity         | string          | Cidade de entrega.                                                        |
| ShipRegion       | string          | Região de entrega (se aplicável).                                         |
| ShipPostalCode   | string          | Código postal de entrega.                                                 |
| ShipCountry      | string          | País de entrega.                                                          |

## Products UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| ProductID        | int             | Identificação única do produto.                                           |
| ProductName      | nvarchar(40)    | Nome do produto.                                                          |
| SupplierID       | int             | Identificação do fornecedor do produto (relacionado a uma tabela de fornecedores). |
| CategoryID       | int             | Identificação da categoria do produto (relacionado a uma tabela de categorias). |
| QuantityPerUnitID| int             | Identificação de como a quantidade do produto é vendida ou embalada (relacionado a uma unidade de medida). |
| UnitPrice        | money           | Preço unitário do produto.                                                |
| UnitsInStock     | smallint        | Quantidade de unidades do produto em estoque.                             |
| UnitsOnOrder     | smallint        | Quantidade de unidades do produto atualmente em pedido (ainda não recebidas). |
| ReorderLevel     | smallint        | Nível mínimo de estoque no qual o produto deve ser reabastecido.          |
| Discontinued     | bit             | Indica se o produto foi descontinuado (0 para não descontinuado, 1 para descontinuado). |
| CreateDate       | date            | Data de criação do registro do produto.                                   |
| LastUpdateDate   | date            | Data da última atualização do registro do produto.                        |

## Products USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| ProductID        | int             | Identificação única de cada produto.                                      |
| ProductName      | string          | Nome do produto.                                                          |
| SupplierID       | int             | ID do fornecedor responsável pelo produto.                                |
| CategoryID       | int             | ID da categoria à qual o produto pertence.                                |
| QuantityPerUnit  | string          | Descrição da quantidade por unidade (ex.: embalagem ou volume).            |
| UnitPrice        | decimal         | Preço unitário do produto.                                                |
| UnitsInStock     | int             | Quantidade de unidades disponíveis em estoque.                            |
| UnitsOnOrder     | int             | Quantidade de unidades já encomendadas.                                   |
| ReorderLevel     | int             | Nível mínimo de estoque que exige reposição.                              |
| Discontinued     | boolean         | Indica se o produto está descontinuado (False = Não; True = Sim).         |

## Suppliers UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| SupplierID       | int             | Identificação única do fornecedor.                                        |
| CompanyName      | nvarchar(40)    | Nome da empresa fornecedora.                                              |
| ContactName      | nvarchar(30)    | Nome do contato principal na empresa fornecedora.                         |
| ContactTitleID   | int             | Identificação do título ou cargo do contato (relacionado a uma tabela de títulos). |
| Address          | nvarchar(60)    | Endereço da empresa fornecedora.                                          |
| CityID           | int             | Identificação da cidade onde o fornecedor está localizado (relacionado a uma tabela de cidades). |
| RegionID         | int             | Identificação da região onde o fornecedor está localizado (relacionado a uma tabela de regiões). |
| PostalCode       | nvarchar(10)    | Código postal do fornecedor.                                              |
| CountryCode      | nchar(2)        | Código do país do fornecedor (geralmente, um código de dois caracteres, como "US" para os Estados Unidos). |
| Phone            | nvarchar(24)    | Número de telefone do fornecedor.                                         |
| Fax              | nvarchar(24)    | Número de fax do fornecedor.                                              |
| CreateDate       | date            | Data de criação do registro do fornecedor.                                |
| LastUpdateDate   | date            | Data da última atualização do registro do fornecedor.                     |

## Suppliers USA
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| SupplierID       | int             | Identificação única do fornecedor.                                        |
| CompanyName      | string          | Nome da empresa fornecedora.                                              |
| ContactName      | string          | Nome da pessoa de contato no fornecedor.                                  |
| ContactTitle     | string          | Cargo ou título da pessoa de contato.                                     |
| Address          | string          | Endereço do fornecedor.                                                   |
| City             | string          | Cidade onde o fornecedor está localizado.                                 |
| RegionID         | int             | ID da região correspondente.                                              |
| PostalCode       | string          | Código postal do endereço do fornecedor.                                  |
| Country          | string          | País onde o fornecedor está localizado.                                   |
| Phone            | string          | Número de telefone de contato do fornecedor.                              |
| Fax              | string          | Número de fax do fornecedor (opcional).                                   |

## Tabelas apenas da UK

### QuantitiesPerUnit UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| QuantityPerUnitID| int             | Identificação única para o tipo de unidade de medida.                     |
| QuantityPerUnit  | nchar(20)       | Descrição de como a quantidade do produto é embalada ou vendida (por exemplo, "10 caixas x 20 pacotes"). |
| CreateDate       | date            | Data de criação do registro da unidade de medida.                         |
| LastUpdateDate   | date            | Data da última atualização do registro da unidade de medida.              |

### Ship to UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| ShipToID         | int             | Identificação única do endereço de envio.                                 |
| ShipToName       | nvarchar(30)    | Nome do destinatário ou da pessoa responsável pela entrega.               |
| ShipToAddress    | nvarchar(30)    | Endereço de envio (rua, avenida, etc.).                                   |
| ShipCityID       | int             | Identificação da cidade de envio (relacionada a uma tabela de cidades).    |
| ShipRegionID     | int             | Identificação da região de envio (relacionada a uma tabela de regiões).    |
| ShipPostalCode   | nvarchar(10)    | Código postal do endereço de envio.                                       |
| ShipCountryCode  | nchar(2)        | Código do país de envio (usualmente um código de dois caracteres, como "US" para os Estados Unidos). |
| CreateDate       | date            | Data de criação do registro de endereço de envio.                         |
| LastUpdateDate   | date            | Data da última atualização do registro de endereço de envio.              |

### City UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| CityID           | int             | Identificação única da cidade.                                            |
| CityName         | nvarchar(20)    | Nome da cidade.                                                           |
| CreateDate       | date            | Data de criação do registro da cidade.                                    |
| LastUpdateDate   | date            | Data da última atualização do registro da cidade.                         |

### Titles UK
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| TitleID          | int             | Identificação única do título ou cargo (por exemplo, "Sr.", "Sra.", "Dr.", etc.). |
| Title            | nvarchar(30)    | Nome do título ou cargo (por exemplo, "Gerente de Vendas", "Diretor Executivo"). |
| CreateDate       | date            | Data de criação do registro do título.                                    |
| LastUpdateDate   | date            | Data da última atualização do registro do título.                         |

## Iguais

### Categories (Igual)
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| CategoryID       | int             | Identificação única da categoria.                                         |
| CategoryName     | string          | Nome da categoria.                                                        |
| Description      | string          | Descrição dos produtos incluídos na categoria.                            |

### Region (Igual)
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| RegionID         | int             | Identificação única da região.                                            |
| RegionDescription| string          | Descrição da região.                                                      |

### Shipper (Igual)
| Campo            | Tipo            | Descrição                                                                 |
|------------------|-----------------|--------------------------------------------------------------------------|
| ShipperID        | int             | Identificação única da transportadora.                                    |
| CompanyName      | string          | Nome da empresa de transporte.                                            |
| Phone            | string          | Número de telefone de contato da transportadora.                          |