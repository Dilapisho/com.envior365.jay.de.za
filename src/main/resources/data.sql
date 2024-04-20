INSERT INTO waste_category(display_name, code, description)
VALUES ('Health Care Waste', 'healthcare_waste', 'Byproducts of health care');

INSERT INTO  waste_category(display_name, code, description)
VALUES ('Pesticide waste', 'pesticide_waste', 'Can no longer be used');

INSERT INTO  waste_category(display_name, code, description)
VALUES ('Asbestos waste', 'asbestos_waste', 'hazardous waste');
INSERT INTO waste_category( display_name, code, description)
VALUES ('Batteries', 'batteries','battery disposal');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Power Station Waste','power_station_waste','Hazardous waste that contains organic or inorganic elements of compounds');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Construction', 'construction', 'demolition waste');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Domestic waste','domestic_waste', 'food,paper,glass, metals, textiles waste. etc');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Oil','oil','solid, nuclear of debris waste' );

INSERT INTO waste_category(display_name, code, description)
VALUES ('E-Waste', 'electronic_waste','discarded electrical and electronic equipment');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Fluorescent Lamps', 'fluorescent_lamps','Contains a small amount of mercury');

INSERT INTO waste_category(display_name, code, description)
VALUES ('POP Waste', 'pop_waste', 'Substances known to stay intact and do not break down');

INSERT INTO waste_category(display_name, code, description)
VALUES ('Sewage Sludge', 'sewage_sludge','Solid portion of the sewage');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Segregation',
        'Healthcare facilities should separate waste at the point of generation into different categories such as infectious waste, sharp objects, pharmaceutical waste, chemical waste, and non-hazardous waste');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Identification and labeling',
        'Containers used for healthcare waste should be clearly labeled with the type of waste they contain, the date of collection, and any other relevant information. Color coding can also help to easily identify different types of waste.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Containment',
        'Healthcare waste should be securely contained in leak-proof, puncture-resistant containers that are appropriate for the type of waste being disposed of. Sharp objects should be placed in puncture-proof containers.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Storage',
        'Healthcare waste should be stored in designated areas that are secure, well-ventilated, and inaccessible to unauthorized personnel. Storage areas should be equipped with appropriate signage and safety measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Transportation',
        ' Healthcare waste should be transported in accordance with local regulations and using approved vehicles and containers. Transport personnel should be trained in handling and transporting healthcare waste safely.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Transportation', 'Healthcare waste should be transported in accordance with local regulations and using approved vehicles and containers. Transport personnel should be trained in handling and transporting healthcare waste safely.
');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Treatment and disposal',
        'Healthcare waste should be treated and disposed of in accordance with local regulations and guidelines. This may involve methods such as incineration, autoclaving, chemical treatment, or landfilling, depending on the type of waste and local regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Documentation',
        'Healthcare facilities should maintain accurate records of the generation, handling, treatment, and disposal of healthcare waste. This information may be required for regulatory compliance and monitoring purposes.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Training and education',
        'Healthcare personnel should receive training on proper waste management practices, including segregation, handling, and disposal of healthcare waste. This helps to ensure that waste is managed safely and effectively.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Environmental protection',
        'Healthcare facilities should take measures to minimize the environmental impact of waste disposal, such as implementing recycling programs and using environmentally-friendly disposal methods whenever possible.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'healthcare_waste'), 'Regular review and improvement',
        'Healthcare facilities should regularly review their waste management practices to identify areas for improvement and ensure compliance with regulations and best practices.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Identification and Segregation',
        ' Pesticide waste should be identified and segregated from other types of waste at the point of generation. This helps to prevent accidental exposure and contamination of other waste streams.');


INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Labeling',
        ' Containers used for storing pesticide waste should be clearly labeled with the name of the pesticide, its active ingredients, and any other relevant information. Proper labeling');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Containment',
        'Pesticide waste should be stored in leak-proof, sturdy containers that are resistant to corrosion and degradation. These containers should be kept tightly sealed to prevent spills and leaks.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Storage',
        'Pesticide waste should be stored in a designated area that is secure, well-ventilated, and inaccessible to unauthorized personnel. The storage area should be equipped with appropriate safety measures, such as spill containment kits and fire extinguishers.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Transportation',
        'Pesticide waste should be transported in accordance with local regulations and using approved vehicles and containers. Transport personnel should be trained in handling hazardous materials and equipped with appropriate personal protective equipment.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Disposal',
        'Pesticide waste should be disposed of in accordance with local regulations and guidelines. This may involve treatment methods such as incineration, chemical neutralization, or landfilling in designated hazardous waste facilities.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'ecycling and Reuse',
        'Whenever possible, unused pesticides should be returned to the manufacturer or a certified recycling facility for proper disposal or recycling. Some pesticides may also be eligible for reuse or repackaging if they meet certain criteria.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Documentation',
        'Keep accurate records of pesticide usage, storage, and disposal. This information may be required for regulatory compliance and monitoring purposes.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Training and Education:',
        'Personnel involved in handling pesticide waste should receive training on proper waste management practices, including handling, storage, and disposal procedures.');
INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'pesticide_waste'), 'Environmental Protection',
        'Take measures to minimize the environmental impact of pesticide waste disposal, such as preventing spills, using environmentally-friendly disposal methods whenever possible, and avoiding contamination of water sources and soil.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Identification and Segregation',
        'Asbestos waste should be identified and segregated from other types of waste at the point of generation. This helps to prevent health hazards and environmental contamination.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Labeling',
        'Containers used for storing asbestos waste should be clearly labeled with the name of the asbestos-containing material, the date of collection, and any other relevant information. Proper labeling ensures safe handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Containment',
        'Asbestos waste must be securely contained in leak-proof, sturdy containers to prevent the release of fibers into the air. Use containers specifically designed for asbestos disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Handling',
        'Handle asbestos waste with caution to minimize the risk of fiber release. Use appropriate personal protective equipment, such as respirators, gloves, and protective clothing, when handling asbestos-containing materials.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Transportation',
        'Transport asbestos waste in accordance with local regulations and using approved vehicles and containers. Ensure that vehicles and containers are properly labeled and sealed to prevent fiber release.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Disposal',
        'Asbestos waste should be disposed of in designated hazardous waste facilities or landfill sites that are authorized to accept asbestos-containing materials. Follow all local regulations and guidelines for packaging and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Recycling and Reuse',
        'Asbestos waste typically cannot be recycled or reused due to its hazardous nature. It should be treated and disposed of properly in accordance with regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Documentation',
        'Maintain accurate records of asbestos waste generation, handling, and disposal. Keep records of disposal receipts and documentation to demonstrate compliance with regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Training and Education',
        'Ensure that personnel involved in handling asbestos waste receive proper training on safe handling and disposal procedures. Provide education on the health risks associated with asbestos exposure.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Environmental Protection',
        'Take measures to minimize the environmental impact of asbestos waste disposal, such as preventing spills and leaks during transportation and disposal. Follow all applicable regulations and guidelines.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'asbestos_waste'), 'Regular Review and Improvement',
        'Regularly review asbestos waste management practices to identify areas for improvement and ensure compliance with regulations and best practices.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Identification and Segregation',
        'Batteries should be identified and segregated from other types of waste at the point of collection. This helps to prevent accidental damage and contamination.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Labeling',
        'Containers used for storing batteries should be clearly labeled with the type of batteries they contain, such as alkaline, lithium-ion, or lead-acid. Proper labeling ensures safe handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Containment',
        'Batteries should be stored in leak-proof, sturdy containers to prevent electrolyte leakage and chemical spills. Ensure that containers are compatible with the type of batteries being stored.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Transportation',
        'Transport batteries in accordance with local regulations and using approved vehicles and containers. Ensure that batteries are securely packaged to prevent damage or short-circuit during transit.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Disposal',
        'Dispose of batteries at designated recycling centers or hazardous waste facilities. Follow all local regulations and guidelines for battery disposal, including proper packaging and handling.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Recycling',
        'Whenever possible, recycle batteries to recover valuable materials and minimize environmental impact. Many types of batteries, including lead-acid and lithium-ion, can be recycled to extract metals and components for reuse.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Documentation',
        'Maintain accurate records of battery disposal, including the type and quantity of batteries disposed of, the date of disposal, and the destination facility. Documentation may be required for regulatory compliance and reporting.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Training and Education',
        'Ensure that personnel involved in battery handling and disposal receive proper training on safe handling practices, recycling procedures, and regulatory requirements.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Environmental Protection',
        'Take measures to minimize environmental impact during battery disposal, such as preventing leaks and spills, and promoting recycling initiatives to reduce the accumulation of hazardous battery waste.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'batteries'), 'Regular Review and Improvement',
        'Regularly review battery disposal practices to identify areas for improvement, such as increasing recycling rates, implementing more efficient collection methods, and ensuring compliance with changing regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Identification and Segregation',
        'Identify and segregate power station waste at the point of generation. This helps to prevent mixing with other waste streams and ensures proper handling.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Labeling',
        'Label containers used for storing power station waste with the type of waste and any relevant information, such as its origin, composition, and potential hazards. Proper labeling facilitates safe handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Containment',
        'Store power station waste in sturdy, leak-proof containers that are resistant to corrosion and degradation. Ensure that containers are properly sealed to prevent leaks and spills.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Transportation',
        'Transport power station waste using approved vehicles and containers in accordance with local regulations. Take precautions to prevent spills and leaks during transit, and secure containers to prevent shifting or damage.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Disposal',
        'Dispose of power station waste at authorized facilities equipped to handle hazardous waste. Follow all local regulations and guidelines for waste disposal, including packaging requirements and proper disposal methods.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Recycling and Reuse',
        'Explore opportunities for recycling or reusing power station waste where feasible. Some materials, such as metals and certain byproducts, may be suitable for recycling or repurposing, reducing the overall environmental impact.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Documentation',
        'Maintain detailed records of power station waste generation, handling, and disposal. Document the type and quantity of waste generated, disposal methods used, and any relevant regulatory compliance.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Training and Education',
        'Provide training to personnel involved in power station waste management on safe handling practices, regulatory requirements, and environmental protection measures. Ensure that all employees are aware of their responsibilities.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of power station waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'power_station_waste'), 'Regular Review and Improvement',
        'Regularly review power station waste management practices to identify opportunities for improvement. Monitor waste generation, disposal processes, and environmental performance to ensure ongoing compliance and effectiveness.');
INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Identification and Segregation',
        'Identify and segregate construction waste at the job site. Separate different types of waste, such as concrete, wood, metal, and plastic, to facilitate recycling and proper disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Labeling',
        'Label containers used for storing construction waste with the type of material and any relevant information, such as its source and composition. Proper labeling helps ensure safe handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Containment',
        'Store construction waste in designated areas or containers that are sturdy and secure. Ensure that containers are properly sealed to prevent leaks and spills.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Transportation',
        'Transport construction waste using appropriate vehicles and equipment. Secure loads properly to prevent materials from shifting or falling during transit.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Disposal',
        'Dispose of construction waste at authorized facilities, such as recycling centers or landfills, that are equipped to handle different types of materials. Follow all local regulations and guidelines for waste disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Recycling',
        'Maximize recycling opportunities for construction waste by separating materials such as concrete, asphalt, wood, and metals for recycling. Explore options for reuse or repurposing materials on-site or off-site.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Documentation',
        'Maintain records of construction waste generation, handling, and disposal. Document the types and quantities of waste generated, disposal methods used, and any recycling or reuse efforts.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Training and Education',
        'Provide training to construction workers on proper waste management practices, including segregation, handling, and disposal procedures. Educate workers about the importance of recycling and environmental protection.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of construction waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'construction'), 'Regular Review and Improvement',
        'Regularly review construction waste management practices to identify opportunities for improvement. Monitor waste generation, recycling efforts, and environmental compliance to ensure ongoing effectiveness.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Segregation',
        'Segregate domestic waste at the point of generation into different categories such as food waste, paper, glass, metals, plastics, and textiles. Separating waste streams facilitates recycling and proper disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Containerization',
        'Use appropriate containers for storing different types of domestic waste, such as bins, bags, or composting bins. Ensure that containers are properly sealed and labeled to prevent spills and contamination.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Collection',
        'Arrange for regular collection of domestic waste by municipal or private waste management services. Follow local guidelines and schedules for waste collection and ensure that waste is placed out for collection on designated days.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Recycling',
        'Maximize recycling opportunities for domestic waste by separating recyclable materials such as paper, cardboard, glass, metals, and plastics. Use designated recycling bins or take materials to recycling centers.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Composting',
        'Compost organic waste such as food scraps, yard waste, and non-recyclable paper to reduce landfill waste and create nutrient-rich compost for gardens and landscaping. Use composting bins or piles in your yard.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Disposal',
        'Dispose of non-recyclable and non-compostable waste in accordance with local regulations. Place waste in designated bins or bags for collection and disposal by waste management services.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Hazardous Waste',
        'Dispose of hazardous household waste such as batteries, electronics, fluorescent bulbs, and chemicals separately from regular domestic waste. Take these items to designated drop-off locations for proper disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Education and Awareness',
        'Educate household members about proper waste management practices, including segregation, recycling, composting, and hazardous waste disposal. Encourage participation in recycling programs and community clean-up events.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Reducing Waste',
        'Reduce waste generation by minimizing consumption, choosing products with less packaging, and opting for reusable items over single-use disposable items. Encourage the use of cloth bags, reusable water bottles, and containers for food storage.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Environmental Protection',
        'Take measures to minimize the environmental impact of domestic waste disposal, such as reducing landfill waste, conserving resources through recycling and composting, and preventing pollution.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'domestic_waste'), 'Community Participation',
        'Participate in community initiatives to promote waste reduction, recycling, and environmental stewardship. Support local recycling programs, composting facilities, and clean-up efforts in your neighborhood.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Identification and Segregation',
        'Identify and segregate oil waste at the point of generation. Separate different types of oil waste, such as engine oil, cooking oil, hydraulic oil, and lubricating oil, to facilitate proper handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Containment',
        'Store oil waste in leak-proof, sturdy containers that are compatible with the type of oil being stored. Ensure that containers are properly sealed to prevent leaks and spills.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Transportation',
        'Transport oil waste using approved vehicles and containers in accordance with local regulations. Secure containers to prevent shifting or damage during transit, and take precautions to prevent spills and leaks.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Disposal',
        'Dispose of oil waste at authorized facilities equipped to handle hazardous waste. Follow all local regulations and guidelines for oil waste disposal, including proper packaging, labeling, and documentation.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Recycling',
        'Whenever possible, recycle oil waste to recover valuable materials and minimize environmental impact. Oil recycling facilities can process used oil for reuse in various applications, such as fuel blending or lubricant production.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Reuse',
        'Explore opportunities for reusing oil waste where feasible. Depending on its condition and quality, used oil may be suitable for reuse in certain applications, such as oil-based products or industrial processes.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Documentation',
        'Maintain records of oil waste generation, handling, and disposal. Document the types and quantities of oil waste generated, disposal methods used, and any recycling or reuse efforts.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Training and Education',
        'Provide training to personnel involved in oil waste management on safe handling practices, regulatory requirements, and environmental protection measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of oil waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'oil'), 'Regular Review and Improvement',
        'Regularly review oil waste management practices to identify opportunities for improvement. Monitor waste generation, recycling efforts, and environmental compliance to ensure ongoing effectiveness.');
INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Identification and Segregation',
        'Identify and segregate electronic waste at the point of collection. Separate different types of e-waste, such as computers, mobile phones, televisions, and appliances, to facilitate recycling and proper disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Containerization',
        'Use appropriate containers for storing electronic waste, such as bins or pallets. Ensure that containers are sturdy and secure to prevent damage to electronic devices and to facilitate handling and transportation.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Data Security',
        'Prior to disposal, ensure that all data storage devices, such as hard drives and memory cards, are securely wiped or destroyed to protect sensitive information. Use data destruction methods that comply with data protection regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Transportation',
        'Transport electronic waste using approved vehicles and containers in accordance with local regulations. Secure loads properly to prevent damage to electronic devices during transit, and take precautions to prevent theft or loss of data.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Recycling',
        'Maximize recycling opportunities for electronic waste by separating recyclable materials such as metals, plastics, and glass. Use certified e-waste recycling facilities or take e-waste to designated drop-off locations for proper recycling.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Reuse',
        'Explore opportunities for reusing electronic devices or components where feasible. Donate functional electronic devices to charitable organizations or refurbish them for resale to extend their useful life and reduce e-waste generation.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Disposal',
        'Dispose of non-recyclable electronic waste at authorized facilities equipped to handle hazardous materials. Follow all local regulations and guidelines for e-waste disposal, including proper packaging, labeling, and documentation.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Documentation',
        'Maintain records of electronic waste disposal, including the types and quantities of e-waste disposed of, disposal methods used, and any recycling or reuse efforts. Documentation may be required for regulatory compliance and reporting.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Training and Education',
        'Provide training to personnel involved in e-waste management on safe handling practices, data security procedures, and environmental protection measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of e-waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'electronic_waste'), 'Regular Review and Improvement',
        'Regularly review e-waste management practices to identify opportunities for improvement. Monitor waste generation, recycling efforts, and environmental compliance to ensure ongoing effectiveness.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Identification and Segregation',
        'Identify and segregate fluorescent lamps waste at the point of collection. Separate fluorescent tubes and bulbs from other waste streams to facilitate recycling and proper disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Containerization',
        'Use specialized containers or packaging for storing fluorescent lamps waste. Ensure that containers are sturdy and secure to prevent breakage and release of hazardous materials.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Handling Precautions',
        'Handle fluorescent lamps waste with care to prevent breakage and release of mercury vapor. Use gloves and safety glasses when handling lamps, and avoid crushing or puncturing them.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Transportation',
        'Transport fluorescent lamps waste using approved vehicles and containers in accordance with local regulations. Secure loads properly to prevent breakage and release of hazardous materials.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Recycling',
        'Maximize recycling opportunities for fluorescent lamps waste by separating lamps into different types, such as straight tubes, compact bulbs, and circular lamps. Use certified lamp recycling facilities for proper recycling.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Disposal',
        'Dispose of broken or non-recyclable fluorescent lamps waste at authorized facilities equipped to handle hazardous materials. Follow all local regulations and guidelines for lamp waste disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Documentation',
        'Maintain records of fluorescent lamps waste disposal, including the types and quantities of lamps disposed of, disposal methods used, and any recycling efforts. Documentation may be required for regulatory compliance and reporting.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Training and Education',
        'Provide training to personnel involved in fluorescent lamps waste management on safe handling practices, recycling procedures, and environmental protection measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of fluorescent lamps waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((select id from waste_category where code = 'fluorescent_lamps'), 'Regular Review and Improvement',
        'Regularly review fluorescent lamps waste management practices to identify opportunities for improvement. Monitor waste generation, recycling efforts, and environmental compliance to ensure ongoing effectiveness.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Identification and Segregation',
        'Identify and segregate persistent organic pollutants (POP) waste at the point of collection. Separate POP waste from other waste streams to prevent contamination and facilitate proper handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Containerization',
        'Use specialized containers or packaging for storing POP waste. Ensure that containers are sturdy, leak-proof, and resistant to corrosion to prevent release of pollutants and protect the environment.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Handling Precautions',
        'Handle POP waste with extreme caution to minimize exposure and prevent environmental contamination. Use appropriate personal protective equipment (PPE) and follow established safety protocols for handling hazardous materials.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Transportation',
        'Transport POP waste using specialized vehicles and containers designed for hazardous materials transportation. Ensure compliance with all transportation regulations and safety requirements to prevent spills and accidents.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Disposal',
        'Dispose of POP waste at authorized facilities equipped to handle hazardous materials. Follow all local, national, and international regulations for POP waste disposal, including proper treatment and containment.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Recycling',
        'Explore opportunities for recycling or recovery of valuable materials from POP waste where feasible. Some components of POP waste may be recoverable through specialized recycling processes, reducing the need for disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Documentation',
        'Maintain detailed records of POP waste generation, handling, and disposal. Document the types and quantities of waste generated, disposal methods used, and any recycling or recovery efforts undertaken.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Training and Education',
        'Provide comprehensive training to personnel involved in POP waste management on safe handling practices, regulatory compliance, and environmental protection measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of POP waste disposal, such as pollution prevention strategies, waste reduction initiatives, and adherence to environmental regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'pop_waste'), 'Regular Review and Improvement',
        'Regularly review POP waste management practices to identify opportunities for improvement. Monitor waste generation, disposal methods, and environmental compliance to ensure ongoing effectiveness and regulatory compliance.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Identification and Segregation',
        'Identify and segregate sewage sludge at wastewater treatment facilities. Separate sewage sludge from other waste streams to prevent contamination and facilitate proper handling and disposal.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Dewatering',
        'Dewater sewage sludge to reduce its volume and facilitate further processing and disposal. Use mechanical dewatering methods such as centrifugation, filtration, or pressing to remove excess water from the sludge.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Stabilization',
        'Stabilize sewage sludge to reduce pathogens, odors, and organic matter content. Common stabilization methods include aerobic digestion, anaerobic digestion, composting, and lime stabilization.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Treatment',
        'Treat sewage sludge to meet regulatory requirements and minimize environmental impact. Depending on local regulations and site-specific conditions, treatment methods may include thermal drying, incineration, or chemical treatment.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Disposal',
        'Dispose of treated sewage sludge at authorized facilities equipped to handle biosolids. Follow all local, national, and international regulations for sewage sludge disposal, including proper land application, landfilling, or beneficial reuse.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Recycling and Reuse',
        'Explore opportunities for recycling or beneficial reuse of treated sewage sludge. Depending on its quality and characteristics, sewage sludge may be suitable for agricultural use, land reclamation, or energy recovery.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Documentation',
        'Maintain comprehensive records of sewage sludge generation, treatment, and disposal. Document the types and quantities of sludge produced, treatment methods used, and disposal or reuse activities undertaken.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Training and Education',
        'Provide training to personnel involved in sewage sludge management on safe handling practices, regulatory compliance, and environmental protection measures.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Environmental Protection',
        'Implement measures to minimize the environmental impact of sewage sludge disposal, such as pollution prevention strategies, odor control measures, and compliance with land application regulations.');

INSERT INTO disposal_guideline(waste_category_code, display_name, content)
VALUES ((SELECT id FROM waste_category WHERE code = 'sewage_sludge'), 'Regular Review and Improvement',
        'Regularly review sewage sludge management practices to identify opportunities for improvement. Monitor sludge quality, treatment processes, and environmental compliance to ensure ongoing effectiveness and regulatory compliance.');
